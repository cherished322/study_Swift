//
//  num8393.swift
//  Study
//
//  Created by 강태윤 on 2020/12/09.
//
/*
     문제
     n이 주어졌을 때, 1부터 n까지 합을 구하는 프로그램을 작성하시오.

     입력
     첫째 줄에 n (1 ≤ n ≤ 10,000)이 주어진다.

     출력
     1부터 n까지 합을 출력한다.

     예제 입력 1
     3
     예제 출력 1
     6
 */
import Foundation

func num8393(){
    let input_n = Int(readLine()!)!
    var result = 0
    if input_n >= 1 && input_n <= 10000 {
        for i in 1...input_n {
           result += i
        }
    }
    print(result)
}
