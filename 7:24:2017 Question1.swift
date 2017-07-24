//
//  7:24:2017 Question1.swift
//  
//
//  Created by 吕东昇 on 2017/7/24.
//
//

import Foundation

import UIKit




func word_check (word: String){
    var count = 0
    let character = Array(word.characters)
    for _ in character{
        count = count+1
    }
    for i in 1...count{
        if character[i-1] == character[count-i]{
        }else{
            print("false")
            return
        }
        
    }
    print("true")
}

word_check(word: "racecar")
word_check(word: "race")

