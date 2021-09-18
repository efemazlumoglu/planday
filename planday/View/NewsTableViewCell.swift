//
//  NewsTableViewCell.swift
//  planday
//
//  Created by Efe Mazlumoğlu on 18.09.2021.
//

import UIKit

class NewsTableViewCell: UITableViewCell {
    
    @IBOutlet weak var newsImageView: UIImageView!
    @IBOutlet weak var title: UILabel!
    @IBOutlet weak var author: UILabel!
    @IBOutlet weak var publishedAt: UILabel!
    let spinner = UIActivityIndicatorView(style: UIActivityIndicatorView.Style.medium)
    
    
    static var identifier: String {
        return String(describing: self)
    }
    
    func populateCell(image: String, title: String, author: String, publishedAt: String) {
        self.spinner.startAnimating()
        self.title.text = title
        self.author.text = author
        self.publishedAt.text = DateHelper.instance.getDate(date: publishedAt).dateMonthText
        self.newsImageView?.downloaded(from: URL(string: image)!, contentMode: .scaleToFill)
        self.newsImageView.alpha = 0.4
        self.spinner.stopAnimating()
    }
}
