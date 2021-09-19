//
//  ViewController.swift
//  planday
//
//  Created by Efe Mazlumoğlu on 18.09.2021.
//

import UIKit
import Foundation
import Alamofire

class NewsViewController: UIViewController {
    
    @IBOutlet weak var tableView: UITableView!
    var news: NewsModel?
    var searchParameter: String = "everything"
    var index: Int = 0
    let spinner = UIActivityIndicatorView(style: UIActivityIndicatorView.Style.medium)

    override func viewDidLoad() {
        super.viewDidLoad()
        getNews()
        registerTableView()
        populateUI()
    }
    
    override func didReceiveMemoryWarning() {
       super.didReceiveMemoryWarning()
    }
    
    func getNews() {
        let parameters: [String: String] = [
            "q": searchParameter,
            "apiKey": Constants.API_KEY,
            "sortBy": "popularity"
        ]
        spinner.startAnimating()
        tableView.backgroundView = spinner
        AF.request(Constants.BASE_URL, parameters: parameters).response {
            response in
            if let data = response.data {
                do {
                    self.news = try JSONDecoder().decode(NewsModel.self, from: data)
                    self.tableView.reloadData()
                    self.spinner.stopAnimating()
                    self.tableView.backgroundView = nil
                } catch {
                    print(error)
                    ShowAlert.instance.showAlertView(title: "Failure", message: "Something went wrong please try again later.", preferredStyle: .alert, okLabel: "OK", targetViewController: self, okHandler: nil)
                    self.tableView.reloadData()
                }
            }
        }
    }
    
    func registerTableView() {
        tableView.register(UINib(nibName: NewsTableViewCell.identifier, bundle: nil), forCellReuseIdentifier: NewsTableViewCell.identifier)
    }
        
    func populateUI() {
        self.tableView.delegate = self
        self.tableView.dataSource = self
        self.tableView.reloadData()
        
        let searchController = UISearchController(searchResultsController: nil)
        searchController.obscuresBackgroundDuringPresentation = false
        searchController.searchBar.placeholder = "Search For News"
        self.navigationItem.searchController = searchController
        self.definesPresentationContext = true
        searchController.searchBar.delegate = self
    }
}

extension NewsViewController: UITableViewDelegate, UITableViewDataSource {
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        if self.news?.articles.count == nil || self.news?.articles.count == 0 {
            return 0
        } else {
            return self.news!.articles.count
        }
    }
    
    func tableView(_ tableView: UITableView, heightForRowAt indexPath: IndexPath) -> CGFloat {
        return 300
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: NewsTableViewCell.identifier, for: indexPath) as! NewsTableViewCell
        guard let data = self.news?.articles[indexPath.row] else { return cell }
        cell.populateCell(image: data.urlToImage, title: data.title, author: data.author, publishedAt: data.publishedAt)
        return cell
    }
    
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        self.index = indexPath.row
        self.performSegue(withIdentifier: "openDetail", sender: self)
    }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        if segue.identifier == "openDetail" {
            let destination = segue.destination as! NewsDetailViewController
            destination.data = self.news?.articles[index]
        }
    }
    
}

extension NewsViewController: UISearchBarDelegate {
    func searchBarSearchButtonClicked(_ searchBar: UISearchBar) {
        let searchText = searchBar.text ?? ""
        if searchText.count > 2 {
            self.searchParameter = searchText
            getNews()
        } else {
            ShowAlert.instance.showAlertView(title: "Failure", message: "Cannot found anything.", preferredStyle: .alert, okLabel: "OK", targetViewController: self, okHandler: nil)
        }
    }
}

