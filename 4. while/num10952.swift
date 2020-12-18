//
//  num10952.swift
//  Study
//
//  Created by 강태윤 on 2020/12/09.
//
/*
     문제
     두 정수 A와 B를 입력받은 다음, A+B를 출력하는 프로그램을 작성하시오.

     입력
     입력은 여러 개의 테스트 케이스로 이루어져 있다.

     각 테스트 케이스는 한 줄로 이루어져 있으며, 각 줄에 A와 B가 주어진다. (0 < A, B < 10)

     입력의 마지막에는 0 두 개가 들어온다.

     출력
     각 테스트 케이스마다 A+B를 출력한다.

     예제 입력 1
     1 1
     2 3
     3 4
     9 8
     5 2
     0 0
     예제 출력 1
     2
     5
     7
     17
     7
 */
import Foundation

func num10952(){
    var result: Int = 0
    
    while true{
        let input = readLine()
        if let optionalB = input {
            let some_array = optionalB.split(separator: " ")
            if some_array.count == 2{
                let num_A = Int(some_array[0])!, num_B = Int(some_array[1])!
                if num_A == 0 && num_B == 0{
                    break
                }
                result = num_A + num_B
                print(result)
            }else {break}
        }
    }
}
