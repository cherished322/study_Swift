//
//  num2742.swift
//  Study
//
//  Created by 강태윤 on 2020/12/09.
//
/*
     문제
     자연수 N이 주어졌을 때, N부터 1까지 한 줄에 하나씩 출력하는 프로그램을 작성하시오.

     입력
     첫째 줄에 100,000보다 작거나 같은 자연수 N이 주어진다.

     출력
     첫째 줄부터 N번째 줄 까지 차례대로 출력한다.

     예제 입력 1
     5
     예제 출력 1
     5
     4
     3
     2
     1
 */
import Foundation

func num2742(){
    var input = Int(readLine()!)!
    
    if input <= 100000 {
        let a = input
        for _ in 1...a {
            print(input)
            input -= 1
        }
    }
}
