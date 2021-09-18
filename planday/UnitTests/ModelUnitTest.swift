//
//  ModelUnitTest.swift
//  plandayTests
//
//  Created by Efe Mazlumoğlu on 18.09.2021.
//

import XCTest
@testable import UnitTest

class ModelUnitTest: XCTestCase {
    
    var newsModel: NewsModel!
    var articlesModel: ArticlesModel!
    var sourceModel: SourceModel!

    override func setUpWithError() throws {
        // Put setup code here. This method is called before the invocation of each test method in the class.
        super.setUp()
        sourceModel = SourceModel(id: nil, name: "Efe")
        articlesModel = ArticlesModel(source: sourceModel, author: "Efe", title: "Hello", description: "Naber", url: "https//google.com", urlToImage: "https://google.com", publishedAt: "26/10/1995T10:12:00:00:03Z", content: "Hello")
        newsModel = NewsModel(status: "ok", totalResults: 376, articlesModel: articlesModel)
        
    }

    override func tearDownWithError() throws {
        // Put teardown code here. This method is called after the invocation of each test method in the class.
    }

    func testExample() throws {
        // This is an example of a functional test case.
        // Use XCTAssert and related functions to verify your tests produce the correct results.
        XCTAssertThrowsError(try JSONDecoder().decode(NewsModel.self, from: newsModel))
        XCTAssertThrowsError(try JSONDecoder().decode(ArticlesModel.self, from: articlesModel))
        XCTAssertThrowsError(try JSONDecoder().decode(Source.self, from: sourceModel))
    }

    func testPerformanceExample() throws {
        // This is an example of a performance test case.
        self.measure {
            // Put the code you want to measure the time of here.
        }
    }

}
