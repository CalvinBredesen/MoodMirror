//
//  MoodViewModel.swift
//  StringManipulation
//
//  Created by Calvin Bredesen24 on 2/13/24.
//

import Foundation


class MoodViewModel: ObservableObject {
    
    var moodData = MoodModel();
    
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

    
//    func countOccurances(_text: [String], _keyword: String) -> Int{
//            let text = _text
//            let keyword = _keyword
//        var total = 0;
//
//        for i in 0...text.count-1{
//            if (text[i] == keyword){
//                total = total+1
//            }
//        }
//        
//        
//        return total
//    }
    
    
    func findValue(tokenizedPhrase: [String], words: [String], sentiment: [Int]) -> Int {
        
        var value = 0
        
        for   i in 0...tokenizedPhrase.count-1{
            for word in 0...words.count-1{
                if(tokenizedPhrase[i].lowercased() == words[word].lowercased()){
                    value += sentiment[word]
                }
                
            }
            
        }
        
        
        return value
    }
    
    
    
    func findSentiment(value: Int) -> String {
        
        if (value < -5){
            return "Strongly Negative"
        } else if (value < 0){
            return "Negative"
        } else if (value == 0){
            return "Neutral"
        } else if (value < 5){
            return "Positive"
        } else if (value >= 5){
            return "Strongly Positive"
        } else {
            return ""
        }
        
        
        
        
        
        
    }
    
    
    
    
    func analyzeSentiment(text: String) -> String {
        
        
        var tokenizedPhrase = tokenizePhrase(text)
        
        var sentimentValue = findValue(tokenizedPhrase: tokenizedPhrase!, words: moodData.keywords, sentiment: moodData.values)
        
        var sentiment = findSentiment(value: sentimentValue)
        
       return sentiment
        
        
        
        
    }
    
    
    func getQuote(sentiment: String) -> String{
        
        let quote = (moodData.phrases[sentiment])![Int.random(in: 0..<5)]
        

        return quote
        
    }
    
}


