//
//  num2438.swift
//  Study
//
//  Created by 강태윤 on 2020/12/09.
//
/*
     문제
     첫째 줄에는 별 1개, 둘째 줄에는 별 2개, N번째 줄에는 별 N개를 찍는 문제

     입력
     첫째 줄에 N(1 ≤ N ≤ 100)이 주어진다.

     출력
     첫째 줄부터 N번째 줄까지 차례대로 별을 출력한다.

     예제 입력 1
     5
     예제 출력 1
     *
     **
     ***
     ****
     *****
 */
import Foundation

func num2438(){
    let input_N = Int(readLine()!)!
    
    for i in 1...input_N {
        var star = ""
        for _ in 1...i {
            star += "*"
        }
        print(star)
    }
}
