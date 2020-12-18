//
//  num2675.swift
//  Study
//
//  Created by 강태윤 on 2020/12/16.
//
/*
 문제
 문자열 S를 입력받은 후에, 각 문자를 R번 반복해 새 문자열 P를 만든 후 출력하는 프로그램을 작성하시오. 즉, 첫 번째 문자를 R번 반복하고, 두 번째 문자를 R번 반복하는 식으로 P를 만들면 된다. S에는 QR Code "alphanumeric" 문자만 들어있다.

 QR Code "alphanumeric" 문자는 0123456789ABCDEFGHIJKLMNOPQRSTUVWXYZ\$%*+-./: 이다.

 입력
 첫째 줄에 테스트 케이스의 개수 T(1 ≤ T ≤ 1,000)가 주어진다. 각 테스트 케이스는 반복 횟수 R(1 ≤ R ≤ 8), 문자열 S가 공백으로 구분되어 주어진다. S의 길이는 적어도 1이며, 20글자를 넘지 않는다.

 출력
 각 테스트 케이스에 대해 P를 출력한다.

 예제 입력 1
 2
 3 ABC
 5 /HTP
 예제 출력 1
 AAABBBCCC
 /////HHHHHTTTTTPPPPP
 */
import Foundation

func num2675(){
    let input = Int(readLine()!)!
    var string_Array: [String] = []
    var some_String: String = ""
    
    if input >= 1 && input <= 1000{
        for _ in 0..<input{
            let inputTC = readLine()
            if let optionalB = inputTC {
                let testCase_Array = optionalB.split(separator: " ")
                if Int(testCase_Array[0])! >= 1 && Int(testCase_Array[0])! <= 8{
                    for i in testCase_Array[1]{
                        string_Array.append(String(i))
                    }
                    if string_Array.count >= 1 && string_Array.count <= 20{
                        for i in 0..<string_Array.count{
                            for _ in 0..<Int(testCase_Array[0])!{
                                some_String = some_String + string_Array[i]
                            }
                        }
                        print(some_String)
                        some_String = ""
                        string_Array.removeAll()
                    }
                }
            }
        }
    }
}





/*
 let input = Int(readLine()!)!
 var testCase_Array: [String] = []
 var result: String = ""
 var loopnumber: Int = 0
 var loopString: String = ""
 
 if input >= 1 && input <= 1000{
     for _ in 0..<input{
         let testcase = readLine()
         if let optionalB = testcase {
             var some_Array = optionalB.components(separatedBy: " ")
             if some_Array.count == 2{
                 loopnumber = Int(some_Array[0])!
                 some_Array.removeFirst()
                 loopString = String(some_Array[0])
                 for j in loopString{
                     testCase_Array.append(String(j))
                 }
//                    for i in 0..<testCase_Array.count{
//                        for j in 0..<loopnumber {
//                            print(testCase_Array[i], terminator: "")
//                            if i == testCase_Array.count && j == loopnumber{
//                                print("\n")
                         }
                     }
                 }
             }
         }
     }
 }
}
 */
