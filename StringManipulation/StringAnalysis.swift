//
//  StringAnalysis.swift
//  StringManipulation
//
//  Created by Calvin Bredesen24 on 1/26/24.
//

import Foundation

struct StringAnalysis{
    
    func categorizeValue(value: Int) -> String{
        
        let value1 = value
        
        var output: String = ""
        
        if (value1 <= -15){
            output = "Strongly Negative"
        } else if (value1 >= -15 && value1 <= -2){
            output = "Negative"
        } else if (value1 >= -1 && value1 <= 1){
            output = "Neutral"
        } else if (value1 >= 2 && value1 <= 14){
            output = "Positive"
        } else if (value1 >= 15){
            output = "Strongly Positive"
        }
        
        return output
    }
    
    
    func computeTextWeight(counts: [Int], weights: [Int]) -> Int{
        
        let counts1 = counts
        let weights1 = weights
        var sum: Int = 0
        
        
        for i in 0...counts1.count-1 {
            sum += counts1[i] * weights1[i]
        }
        
        
        return sum
    }
    

    func analyzeTextKeywords(text: [String], keywords: [String]) -> [Int]{
        let text1 = text
        let keywords1 = keywords
        var final: [Int] = []
        
        var count = 0;
        
        for i in 0...keywords.count-1 {
            for a in 0...text1.count-1 {
                if (text1[a]==keywords1[i]){
                    count = count+1
                }
                final[i] = count
        }
            count = 0
                }
        
        
        
        return final
    }
    
    func countOccurances(_text: [String], _keyword: String) -> Int{
            let text = _text
            let keyword = _keyword
        var total = 0;

        for i in 0...text.count-1{
            if (text[i] == keyword){
                total = total+1
            }
        }
        
        
        return total
    }
    

    func tokenizePhrase(_ text: String) -> [String]? {
        if text != "" {
            let rawOutput = text.split(separator: " ", omittingEmptySubsequences: true)
            var output: [String] = []
            for i in rawOutput {
                let rawString = String(i)
                let string = rawString.filter { $0.isLetter }
                output.append(string.lowercased())
            }
            
            print(output)
            return output
        } else { print("Must enter string!") ; return [] }
    }

    
    
}
