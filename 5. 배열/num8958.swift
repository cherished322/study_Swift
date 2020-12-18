//
//  num8958.swift
//  Study
//
//  Created by 강태윤 on 2020/12/11.
//
/*
     문제
     "OOXXOXXOOO"와 같은 OX퀴즈의 결과가 있다. O는 문제를 맞은 것이고, X는 문제를 틀린 것이다. 문제를 맞은 경우 그 문제의 점수는 그 문제까지 연속된 O의 개수가 된다. 예를 들어, 10번 문제의 점수는 3이 된다.

     "OOXXOXXOOO"의 점수는 1+2+0+0+1+0+0+1+2+3 = 10점이다.

     OX퀴즈의 결과가 주어졌을 때, 점수를 구하는 프로그램을 작성하시오.

     입력
     첫째 줄에 테스트 케이스의 개수가 주어진다. 각 테스트 케이스는 한 줄로 이루어져 있고, 길이가 0보다 크고 80보다 작은 문자열이 주어진다. 문자열은 O와 X만으로 이루어져 있다.

     출력
     각 테스트 케이스마다 점수를 출력한다.

     예제 입력 1
     5
     OOXXOXXOOO
     OOXXOOXXOO
     OXOXOXOXOXOXOX
     OOOOOOOOOO
     OOOOXOOOOXOOOOX
     예제 출력 1
     10
     9
     7
     55
     30
 */
import Foundation

func num8958(){
    //    var some_array: [String] = []
    //    var some_array1: [Character] = []
    //    var score:Int = 0
    //    let input = Int(readLine()!)!
    //
    //    for _ in 0..<input {
    //        let ox = readLine()
    //        some_array.append(ox!)
    //        for i in 0...some_array.count-1{
    //            some_array1.append(contentsOf: some_array[some_array.index(some_array.startIndex, offsetBy: i)])
    //            for j in 0..<some_array1.count {
    //                for k in 1..<some_array1.count {
    //                    if some_array1[j] == "O"{
    //                        score += 1
    //                        if some_array1[k] == "O"{
    //                            score += 1
    //                        }
    //                    }
    //                }
    //            }
    //        }
    //    }
    //    print(some_array)
    let count = Int(readLine()!)!
    
    for _ in 0..<count {
        print(readLine()!.split(separator: "X").reduce(0) {
            $0 + ($1.count * ($1.count + 1) / 2)
        })
    }
}
