//
//  num11720.swift
//  Study
//
//  Created by 강태윤 on 2020/12/14.
//
/*
 문제
 N개의 숫자가 공백 없이 쓰여있다. 이 숫자를 모두 합해서 출력하는 프로그램을 작성하시오.

 입력
 첫째 줄에 숫자의 개수 N (1 ≤ N ≤ 100)이 주어진다. 둘째 줄에 숫자 N개가 공백없이 주어진다.

 출력
 입력으로 주어진 숫자 N개의 합을 출력한다.

 예제 입력 1
 1
 1
 예제 출력 1
 1
 예제 입력 2
 5
 54321
 예제 출력 2
 15
 예제 입력 3
 25
 7000000000000000000000000
 예제 출력 3
 7
 예제 입력 4
 11
 10987654321
 예제 출력 4
 46
 */
import Foundation

func num11720(){
    let inputA = Int(readLine()!)
    let inputB = readLine()!

    var some_Array1: [String] = []
    var some_Arrat2: [Int] = []
    var result: Int = 0

    
    
    if inputB.count == inputA{
        for i in inputB{
            some_Array1.append(String(i))
        }
        
        for i in 0..<some_Array1.count {
            some_Arrat2.append(Int(some_Array1[i])!)
            
            result = result + some_Arrat2[Int(i)]
        }
        
    }else {print("Wrong")}
    print(result)
}
//MARK - TIP
/*
    입력된 문자열(string)을 배열에(stringArray) 순서대로 집어넣는 방법
    for i in string {
        stringArray.append(String(i))
    }
 
    ** 바로 Int 형변환은 안되나요??
    네 해봤는데 문자열을 배열로 바꾸면 Charater 형이 됩니다. Character 형에서 바로 Int 로 형변환은 불가하고 String 을 거쳐서 Int 로 바꿔주셔야 합니다.
 
 
 */
