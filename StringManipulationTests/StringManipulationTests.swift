//
//  StringManipulationTests.swift
//  StringManipulationTests
//
//  Created by Calvin Bredesen24 on 1/26/24.
//

import XCTest
@testable import StringManipulation

final class StringManipulationTests: XCTestCase {

    func categorizeValue(){
        //Given
        let value = -15
        let analyzer = StringAnalysis()
        
        //When
        let sentiment = analyzer.categorizeValue(value: 15)
        
        //Then
        XCTAssertEqual(sentiment, "Strongly Negative")
    }
    
    
    
    func computeTextWeight(){
        let countArray = [2,1,3]
        let weightArray = [5,10,2]
        let analyzer = StringAnalysis()
        
        let value = analyzer.computeTextWeight(counts: countArray, weights: weightArray)
        
        XCTAssertEqual(value, 26)
    }
    
    //    func computeTextWeight(){
    //        let countArray = []
    //        let weightArray = []
    //        let analyzer = StringAnalysis()
    //
    //        let value = analyzer.computeTextWeight(counts: countArray, weights: weightArray)
    //
    //        XCTAssertEqual(value, 0)
    //    }
//
//    func computeTextWeight(){
//        let countArray = [2,1,3,4]
//        let weightArray = [5,10,2]
//        let analyzer = StringAnalysis()
//        
//        let value = analyzer.computeTextWeight(counts: countArray, weights: weightArray)
//        
//        XCTAssertEqual(value, error)
//    }
//
    
    func analyzeTextKeywords(){
        let text = ["apple", "banana", "apple", "cherry"]
        let keywords = ["apple", "orange", "grape"]
        let analyzer = StringAnalysis()
        
        
        let value = analyzer.analyzeTextKeywords(text: text, keywords: keywords)
        
        XCTAssertEqual(value, [2, 0, 0])
    }
    
    
    //    func analyzeTextKeywords(){
    //        let text = ["apple", "banana", "apple", "cherry"]
    //        let keywords = ["coconut", "tomato"]
    //        let analyzer = StringAnalysis()
    //
    //
    //        let value = analyzer.analyzeTextKeywords(text: text, keywords: keywords)
    //
    //        XCTAssertEqual(value, [0,0])
    //    }
    
    //    func analyzeTextKeywords(){
    //        let text = []
    //        let keywords = ["apple", "orange", "grape"]
    //        let analyzer = StringAnalysis()
    //
    //
    //        let value = analyzer.analyzeTextKeywords(text: text, keywords: keywords)
    //
    //        XCTAssertEqual(value, [0, 0, 0])
    //    }
    
    //    func analyzeTextKeywords(){
    //        let text = ["apple", "banana", "apple", "cherry"]
    //        let keywords = []
    //        let analyzer = StringAnalysis()
    //
    //
    //        let value = analyzer.analyzeTextKeywords(text: text, keywords: keywords)
    //
    //        XCTAssertEqual(value, [])
    //    }
    
    func countOccurances(){
        let text = ["hello", "world", "hello", "swift"]
        let keyword = "hello"
        let analyzer = StringAnalysis()
        
        let value = analyzer.countOccurances(_text: text,_keyword: keyword)
        
        XCTAssertEqual(value, 2)
    }
    
    func tokenizePhrase(){
        let text = "Hello World"
        let analyzer = StringAnalysis()
        
        let value = analyzer.tokenizePhrase(text)
        
        XCTAssertEqual(value, ["hello”, “world"])
        
    }
}
