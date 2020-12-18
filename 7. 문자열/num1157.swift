//
//  num1157.swift
//  Study
//
//  Created by 강태윤 on 2020/12/16.
//
/*
 문제
 알파벳 대소문자로 된 단어가 주어지면, 이 단어에서 가장 많이 사용된 알파벳이 무엇인지 알아내는 프로그램을 작성하시오. 단, 대문자와 소문자를 구분하지 않는다.

 입력
 첫째 줄에 알파벳 대소문자로 이루어진 단어가 주어진다. 주어지는 단어의 길이는 1,000,000을 넘지 않는다.

 출력
 첫째 줄에 이 단어에서 가장 많이 사용된 알파벳을 대문자로 출력한다. 단, 가장 많이 사용된 알파벳이 여러 개 존재하는 경우에는 ?를 출력한다.

 예제 입력 1
 Mississipi
 예제 출력 1
 ?
 예제 입력 2
 zZa
 예제 출력 2
 Z
 예제 입력 3
 z
 예제 출력 3
 Z
 예제 입력 4
 baaa
 예제 출력 4
 A
 */
import Foundation

func num1157(){
    let input = readLine()! // 문자열 입력
    let inputLowercased = input.lowercased()
    
    var empty_Array = [Int](repeating: 0, count: 26)
    var check_Array: [String] = []
    
    let alphabet = "abcdefghijklmnopqrstuvwxyz"
    var alphabet_Array: [String] = []
    for i in alphabet {
        alphabet_Array.append(String(i))
    }
    
    var string_Array: [String] = []
    for i in inputLowercased {
        string_Array.append(String(i))
    }
    if string_Array.count <= 1000000 {
        for i in 0..<string_Array.count {
            for j in 0..<alphabet_Array.count {
                if string_Array[i] == alphabet_Array[j] {
                    empty_Array[j] = empty_Array[j] + 1
                }
            }
        }
        for i in 0..<empty_Array.count{
            if empty_Array.max() == empty_Array[i] {
                check_Array.append(String(alphabet_Array[i]))
            }
        }
    }
    if check_Array.count == 1 {
        print(check_Array[0].uppercased())
    }else { print("?") }
}
