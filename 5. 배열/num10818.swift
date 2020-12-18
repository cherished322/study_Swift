//
//  num10818.swift
//  Study
//
//  Created by 강태윤 on 2020/12/10.
//
/*
     N개의 정수가 주어진다. 이때, 최솟값과 최댓값을 구하는 프로그램을 작성하시오.

     입력
     첫째 줄에 정수의 개수 N (1 ≤ N ≤ 1,000,000)이 주어진다. 둘째 줄에는 N개의 정수를 공백으로 구분해서 주어진다. 모든 정수는 -1,000,000보다 크거나 같고, 1,000,000보다 작거나 같은 정수이다.

     출력
     첫째 줄에 주어진 정수 N개의 최솟값과 최댓값을 공백으로 구분해 출력한다.

     예제 입력 1
     5
     20 10 35 30 7
     예제 출력 1
     7 35
 */
import Foundation

func num10818(){
//    var temp: Int = 0
//    let input1 = Int(readLine()!)!
//    if input1 >= 1 && input1 <= 1000000 {
//
//        let input2 = readLine()
//        if let optionalB = input2 {
//
//            var some_array = optionalB.split(separator: " ")
//            if input1 == some_array.count {
//                for var i in 0...some_array.count-2 {
//                    for j in 0...some_array.count-1 {
//                        if some_array[i] > some_array[j] {
//                            some_array.swapAt(i, j)
//                            print(some_array)
//
//                        }
//                    }
//                }
//                print(some_array)
//
//                print("Perfect")
//
//            }else {print("No")}
//        }
//    }
//}
    let _ = readLine()
    let input = readLine()!.split(separator: " ").map() { Int(String($0))! }
    
    print(input)
    var a = 1000000
    var b = -1000000
    for i in input {
        if a > i {
            a = i
        }
        if b < i {
            b = i
        }
    }
    print("\(b) \(a)")
}
