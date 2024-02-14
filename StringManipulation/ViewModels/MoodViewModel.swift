//
//  MoodViewModel.swift
//  StringManipulation
//
//  Created by Calvin Bredesen24 on 2/13/24.
//

import Foundation


class MoodViewModel: ObservableObject {
    
    
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

    
    
    func findValue(text: [String]) -> Int {
        
        
        
        return 0
    }
    
    
    
    func findSentiment(value: Int) -> String {
        
        
        
        
        return ""
    }
    
}


