//
//  num10871.swift
//  Study
//
//  Created by 강태윤 on 2020/12/09.
//
/*
     문제
     정수 N개로 이루어진 수열 A와 정수 X가 주어진다. 이때, A에서 X보다 작은 수를 모두 출력하는 프로그램을 작성하시오.

     입력
     첫째 줄에 N과 X가 주어진다. (1 ≤ N, X ≤ 10,000)

     둘째 줄에 수열 A를 이루는 정수 N개가 주어진다. 주어지는 정수는 모두 1보다 크거나 같고, 10,000보다 작거나 같은 정수이다.

     출력
     X보다 작은 수를 입력받은 순서대로 공백으로 구분해 출력한다. X보다 작은 수는 적어도 하나 존재한다.

     예제 입력 1
     10 5
     1 10 4 9 2 3 8 5 7 6
     예제 출력 1
     1 4 2 3
 */
import Foundation

func num10871(){
    let input1 = readLine()
    let input2 = readLine()
    
    if let optionalB0 = input1 {
        let some_array1 = optionalB0.split(separator: " ")
        
        if let optionalB1 = input2 {
            let some_array2 = optionalB1.split(separator: " ")
            
            if some_array2.count == Int(some_array1[0])!{
                for i in 0...Int(some_array1[0])!-1{
                    var result = ""
                    if Int(some_array2[i])! < Int(some_array1[1])! {
                        result = result + some_array2[i] + " "
                    }
                    print(result, separator: " ", terminator: "")
                }
            }
        }
    }
}

