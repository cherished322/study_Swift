//
//  num10998.swift
//  Study
//
//  Created by 강태윤 on 2020/12/08.
//
/*
     문제
     두 정수 A와 B를 입력받은 다음, A×B를 출력하는 프로그램을 작성하시오.

     입력
     첫째 줄에 A와 B가 주어진다. (0 < A, B < 10)

     출력
     첫째 줄에 A×B를 출력한다.

     예제 입력 1
     1 2
     예제 출력 1
     2
     예제 입력 2
     3 4
     예제 출력 2
     12
 */
import Foundation

func num10998(){
    let input = readLine()
    if let optionalB = input {
        let some_array = optionalB.components(separatedBy: " ")
        let result = Int(some_array[0])! * Int(some_array[1])!
        print(result)
    }
}

