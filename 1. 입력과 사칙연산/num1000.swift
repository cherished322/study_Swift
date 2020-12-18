//
//  num1000.swift
//  Study
//
//  Created by 강태윤 on 2020/12/08.
//
/*
     문제
     두 정수 A와 B를 입력받은 다음, A+B를 출력하는 프로그램을 작성하시오.
     
     입력
     첫째 줄에 A와 B가 주어진다. (0 < A, B < 10)
     
     출력
     첫째 줄에 A+B를 출력한다.
     
     예제 입력
     1 2
     예제 출력
     3
 */
import Foundation

func num1000(){
    let input = readLine()
    if let optionalB = input{
        let sum_Array = optionalB.components(separatedBy: " ")
        if sum_Array.count == 2 {
            let sum = Int(sum_Array[0])! + Int(sum_Array[1])!
            print(sum)
        }
    }
}


