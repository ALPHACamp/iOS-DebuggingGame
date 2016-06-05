//
//  StringExtension.swift
//  DebuggingGame
//
//  Created by Brian Hu on 6/5/16.
//  Copyright © 2016 AlphaCamp. All rights reserved.
//
import Foundation

extension String {
    static func randomName(length: Int) -> String {
        let charactersString = "abcdefghijklmnopqrstuvwxyzABCDEFGHIJKLMNOPQRSTUVWXYZ0123456789"
        let charactersArray : [Character] = Array(charactersString.characters)
        
        var string = ""
        for _ in 0..<length {
            string.append(charactersArray[Int(arc4random_uniform(UInt32(charactersArray.count)))])
        }
        
        return string
    }
}