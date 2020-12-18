//
//  num10430.swift
//  Study
//
//  Created by 강태윤 on 2020/12/08.
//
/*
     문제
     (A+B)%C는 ((A%C) + (B%C))%C 와 같을까?

     (A×B)%C는 ((A%C) × (B%C))%C 와 같을까?

     세 수 A, B, C가 주어졌을 때, 위의 네 가지 값을 구하는 프로그램을 작성하시오.

     입력
     첫째 줄에 A, B, C가 순서대로 주어진다. (2 ≤ A, B, C ≤ 10000)

     출력
     첫째 줄에 (A+B)%C, 둘째 줄에 ((A%C) + (B%C))%C, 셋째 줄에 (A×B)%C, 넷째 줄에 ((A%C) × (B%C))%C를 출력한다.

     예제 입력 1
     5 8 4
     예제 출력 1
     1
     1
     0
     0
 */
import Foundation

func num10430(){
    let input = readLine()
    if let optionalB = input {
        let some_array = optionalB.components(separatedBy: " ")
        let a = Int(some_array[0]) ?? 0
        let b = Int(some_array[1]) ?? 0
        let c = Int(some_array[2]) ?? 0
        for i in 0...2{
            if Int(some_array[i]) ?? 0 >= 2 || Int(some_array[i]) ?? 0 <= 10000 {
                if i == 2 {
                    print("Please input (2 ≤ A, B, C ≤ 10000)")
                    break;
                }
            }
            if i == 2 {
                let result1 = (a + b) % c
                let result2 = ((a % c) + (b % c)) % c
                let result3 = (a * b) % c
                let result4 = ((a % c) * (b % c)) % c
                print("\(result1)\n\(result2)\n\(result3)\n\(result4)")
            }
        }
    }
}
