//
//  num2588.swift
//  Study
//
//  Created by 강태윤 on 2020/12/08.
//
/*
     문제
     (세 자리 수) × (세 자리 수)는 다음과 같은 과정을 통하여 이루어진다.
     4 7 2 ......(1)
     X 3 8 5 ......(2)
     -------------
     2 3 6 0 ......(3)
     3 7 7 6   ......(4)
     1 4 1 6     ......(5)
     -------------
     1 8 1 7 2 0 ......(6)
     (1)과 (2)위치에 들어갈 세 자리 자연수가 주어질 때 (3), (4), (5), (6)위치에 들어갈 값을 구하는 프로그램을 작성하시오.
     
     입력
     첫째 줄에 (1)의 위치에 들어갈 세 자리 자연수가, 둘째 줄에 (2)의 위치에 들어갈 세자리 자연수가 주어진다.
     
     출력
     첫째 줄부터 넷째 줄까지 차례대로 (3), (4), (5), (6)에 들어갈 값을 출력한다.
     
     예제 입력 1
     472
     385
     예제 출력 1
     2360
     3776
     1416
     181720
 */
import Foundation

func num2588(){
    let input1 = readLine()!
    let input2 = readLine()!
    let obj: [Int] = [Int(input1)! * ((Int(input2)! % 100) % 10),
                      Int(input1)! * ((Int(input2)! % 100) / 10),
                      Int(input1)! * (Int(input2)! / 100),
                      Int(input1)! * Int(input2)!]
    
    for i in 0...3{
        print(obj[i])
    }
    //MARK: - 아래처럼 코딩해도 가능하다
    // let input = readLine()
    //    if let optionalB = input {
    //        let some_array = optionalB.components(separatedBy: " ")
    //        for i in 0...1{
    //            if Int(some_array[i])! >= 999 {
    //                print("Input 3 To Three place")
    //                break
    //            }else if i == 1 {
    //                let obj1 = (Int(some_array[1])! % 100) % 10
    //                let obj2 = (Int(some_array[1])! % 100) / 10
    //                let obj3 = Int(some_array[1])! / 100
    //                print("\(Int(some_array[0])! * obj1)\n\(Int(some_array[0])! * obj2)\n\(Int(some_array[0])! * obj3)\n\(Int(some_array[0])! * Int(some_array[1])!)")
    //            }
    //        }
    //    }
    //}
    //MARK: - 원하는 자릿수 추출하기
    // 1의자리 : (A % 100) % 10
    // 10의자리 : (A % 100) / 10
    // 100의자리 : (A /100)
}
