//
//  BrainCalculater.swift
//  calculator
//
//  Created by A on 7/3/18.
//  Copyright © 2018 khaled waked. All rights reserved.
//

import Foundation

class BrainCalculater {
    
    func Restart () {
        NumWithOpArray = []
    }
    
    
    func Add(Number : Double , With Operation : Character){
        NumWithOpArray.append(CalcElement(Num :Number ,Op : Operation))
        
    }
    
    func Result () -> String {
        
        CalculateMultblyAndDivided()
        CalculateAllMinus()
        return String (NumWithOpArray.reduce(0, {$0 + $1.Num}))
    }
    
    typealias CalcElement = (Num : Double , Op : Character)
    private var NumWithOpArray  : [CalcElement] = []
    
    func CalculateMultblyAndDivided () {
        
        for (index , Current ) in NumWithOpArray.enumerated() {
        if Current.Op == "×"  || Current.Op == "/"  {
        let AfterCurent = NumWithOpArray[index + 1]
        var NewCalc : CalcElement!
        if Current.Op == "×" {
NewCalc = CalcElement(Num: Current.Num * AfterCurent.Num ,Op :AfterCurent.Op )
        
        } else if Current.Op == "/" {
            NewCalc = CalcElement(Num : Current.Num / AfterCurent.Num,Op : AfterCurent.Op )
        }
        NumWithOpArray.remove(at: index) ; NumWithOpArray.remove(at: index )
        NumWithOpArray.insert(NewCalc, at: index)
        CalculateMultblyAndDivided()
                break
            }
         }
      }
    
    
    
    
    func CalculateAllMinus () {
        
    for (index , Current ) in NumWithOpArray.enumerated() {
    if Current.Op == "-"    {
    let AfterCurent = NumWithOpArray[index + 1]
let NewCalc : CalcElement  = CalcElement(Num: Current.Num - AfterCurent.Num,Op :"+" )
    NumWithOpArray.remove(at: index) ; NumWithOpArray.remove(at: index )
    NumWithOpArray.insert(NewCalc, at: index)
            CalculateAllMinus()
            break
          }
        }
    }
    
    
    

}
