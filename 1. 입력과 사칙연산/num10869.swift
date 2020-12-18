//
//  num10869.swift
//  Study
//
//  Created by 강태윤 on 2020/12/08.
//
/*
     문제
     두 자연수 A와 B가 주어진다. 이때, A+B, A-B, A*B, A/B(몫), A%B(나머지)를 출력하는 프로그램을 작성하시오.

     입력
     두 자연수 A와 B가 주어진다. (1 ≤ A, B ≤ 10,000)

     출력
     첫째 줄에 A+B, 둘째 줄에 A-B, 셋째 줄에 A*B, 넷째 줄에 A/B, 다섯째 줄에 A%B를 출력한다.

     예제 입력 1
     7 3
     예제 출력 1
     10
     4
     21
     2
     1
 */
import Foundation

func num10869(){
    let input = readLine()
    if let optionalB = input {
        let some_array = optionalB.components(separatedBy: " ")
        let result1 = Int(some_array[0])! + Int(some_array[1])!
        let result2 = Int(some_array[0])! - Int(some_array[1])!
        let result3 = Int(some_array[0])! * Int(some_array[1])!
        let result4 = Int(some_array[0])! / Int(some_array[1])!
        let result5 = Int(some_array[0])! % Int(some_array[1])!
        print("\(result1)\n\(result2)\n\(result3)\n\(result4)\n\(result5)")
    }
}
