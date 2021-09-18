//
//  ArticlesModel.swift
//  planday
//
//  Created by Efe Mazlumoğlu on 18.09.2021.
//

import Foundation

public struct ArticlesModel: Encodable, Decodable {
    public let source: SourceModel
    public let author: String
    public let title: String
    public let description: String
    public let url: String
    public let urlToImage: String
    public let publishedAt: String
    public let content: String
}
