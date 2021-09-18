//
//  NewsModel.swift
//  planday
//
//  Created by Efe Mazlumoğlu on 18.09.2021.
//

import Foundation

public struct NewsModel: Encodable, Decodable {
    public let status: String
    public let totalResults: Int64?
    public let articles: [ArticlesModel]
}
