//
//  7:24:2017 Question2.swift
//  
//
//  Created by 吕东昇 on 2017/7/24.
//
//

import Foundation
//: Playground - noun: a place where people can play
//[2] Given a 2D Array, determine if the values starting from position (0,0), will be multiplies 2x of itself going vertical and across.

//Sample input 2D array:

//[2] [4] [8] [16] [32] [4] [8] [16] [32] [64] [8] [16] [32] [64] [128]

//Sample output: Return: True

//Requirements: [1] Function is able to take in any array size [2] Only integer values [3] No helper functions
import UIKit
func calculation(totalNumber:Int,Count:Int)->Bool{
    let one_double = Double(totalNumber)
    let two_double = Double(Count)
    let intResult = totalNumber/Count
    let doubleResult = one_double/two_double
    let double_intResult = Double(intResult)
    if doubleResult == double_intResult{
        return true
    }else{
        return false
    }
}

func counting_TotalNumber(Arrays:[Int])->Int{
    var TotalNumber = 0
    for _ in Arrays{
        TotalNumber = TotalNumber + 1
    }
    return TotalNumber
}

func checking_StepOne(TotalNumber:Int,Arrays:[Int])->Int{
    var result = 1
    for i in 1...TotalNumber-1{
        if Arrays[i] == Arrays[i-1]*2{
            result = result + 1
        }else{
            break
        }
        
    }
    return result
}
//result provides a result that how many numbers of number in one array

func check_vertical(TotalNumber:Int,Count:Int,Array:[Int])->Bool{
    let times = TotalNumber/Count
    for i in 1...times-1{
        if Array[Count*i] == Array[Count*i-Count]*2{
        }else{
            return false
        }
    }
    return true
}

func check_across(TotalNumber:Int,Count:Int,Array:[Int])->Bool{
    let times = TotalNumber/Count
    var result = true
    for i in 1...times{
        for a in 1...Count-1{
            if Array[Count*(i-1)+a] == Array[Count*(i-1)+a-1]*2{
            }else{
                return false
            }
        }
    }
    return true
}

func check_array(Arrays:[Int]){
    let array = Arrays
    let totalNumber = counting_TotalNumber(Arrays: array)
    let count = checking_StepOne(TotalNumber: totalNumber, Arrays: array)
    if count == totalNumber{
        print("True")
        return
    }
    let true_or_false = calculation(totalNumber: totalNumber, Count: count)
    if true_or_false == false{
        print("False")
        return
    }
    let checkVetical = check_vertical(TotalNumber: totalNumber, Count: count, Array: array)
    if checkVetical == false{
        print("False")
        return
    }
    let checkAcross = check_across(TotalNumber: totalNumber, Count: count, Array: array)
    if checkAcross == false{
        print("False")
        return
    }
    print("True")
}



