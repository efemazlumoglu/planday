//
//  NewsDetailViewController.swift
//  planday
//
//  Created by Efe Mazlumoğlu on 18.09.2021.
//

import Foundation
import UIKit

class NewsDetailViewController: UIViewController {
    
    @IBOutlet weak var newsDetail: UIImageView!
    @IBOutlet weak var titlr: UILabel!
    @IBOutlet weak var author: UILabel!
    @IBOutlet weak var desc: UILabel!
    @IBOutlet weak var sourceOfNews: UILabel!
    @IBOutlet weak var link: UIButton!
    let spinner = UIActivityIndicatorView(style: UIActivityIndicatorView.Style.medium)
    
    var data: ArticlesModel?
    
    override func viewDidLoad() {
        super.viewDidLoad()
        self.spinner.startAnimating()
        self.newsDetail.downloaded(from: URL(string: data!.urlToImage)!, contentMode: .scaleToFill)
        self.titlr.text = data?.title
        self.author.text = data?.author
        self.desc.text = data?.description
        self.sourceOfNews.text = data?.source.name
        self.spinner.stopAnimating()
    }
    
    @IBAction func openLink(_ sender: Any) {
        if let url = URL(string: (data?.url)!) {
            UIApplication.shared.open(url)
        }
    }
    
    
}
