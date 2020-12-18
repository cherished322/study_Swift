//
//  num2577.swift
//  Study
//
//  Created by 강태윤 on 2020/12/10.
//
/*
 문제
 세 개의 자연수 A, B, C가 주어질 때 A×B×C를 계산한 결과에 0부터 9까지 각각의 숫자가 몇 번씩 쓰였는지를 구하는 프로그램을 작성하시오.

 예를 들어 A = 150, B = 266, C = 427 이라면

 A × B × C = 150 × 266 × 427 = 17037300 이 되고,

 계산한 결과 17037300 에는 0이 3번, 1이 1번, 3이 2번, 7이 2번 쓰였다.

 입력
 첫째 줄에 A, 둘째 줄에 B, 셋째 줄에 C가 주어진다. A, B, C는 모두 100보다 같거나 크고, 1,000보다 작은 자연수이다.

 출력
 첫째 줄에는 A×B×C의 결과에 0 이 몇 번 쓰였는지 출력한다. 마찬가지로 둘째 줄부터 열 번째 줄까지 A×B×C의 결과에 1부터 9까지의 숫자가 각각 몇 번 쓰였는지 차례로 한 줄에 하나씩 출력한다.

 예제 입력 1
 150
 266
 427
 예제 출력 1
 3
 1
 0
 2
 0
 0
 0
 2
 0
 0
 */
import Foundation

func num2577(){
//    var some_array: [Int] = []
//    var str_array: [Character] = []
//    var mult = 1
//    var output: [Int] = []
//    while some_array.count != 3{
//        let input = Int(readLine()!)!
//        if input >= 100 && input < 1000{
//            some_array.append(input)
//        }
//    }
//    for i in 0...some_array.count-1 {
//        mult = mult * some_array[i]
//    }
//    let arra: String = String(mult)
//    for i in 0...arra.count-1{
//        str_array.append(arra[arra.index(arra.startIndex, offsetBy: i)])
//        while output.count != str_array.count+2 {
//            output.append(0)
//        }
//    }
//    for i in 0...str_array.count-1{
//        if str_array[i] == "0" {
//            output[0] += 1
//        }else if str_array[i] == "1" {
//            output[1] += 1
//        }else if str_array[i] == "2" {
//            output[2] += 1
//        }else if str_array[i] == "3" {
//            output[3] += 1
//        }else if str_array[i] == "4" {
//            output[4] += 1
//        }else if str_array[i] == "5" {
//            output[5] += 1
//        }else if str_array[i] == "6" {
//            output[6] += 1
//        }else if str_array[i] == "7" {
//            output[7] += 1
//        }else if str_array[i] == "8" {
//            output[8] += 1
//        }else if str_array[i] == "9" {
//            output[8] += 1
//        }
//
//    }
//    for i in 0...output.count-1{
//        print(output[i])
//    }
    var N = 1
    var dic = [Int](repeating: 0, count: 10)
    (0..<3).forEach { _ in
        N *= Int(readLine()!)!
    }
    while N > 0 {
        let rem = N % 10
        dic[rem] += 1
        N /= 10
    }
    dic.forEach { print($0) }
}
//MARK: - Tip
/*
        어떤 변수[Object]안에 포함되어있는 각 각 글자를 배열의 형태로 확인하기.
    1. 데이터 타입에 따라 빈 배열[Array]을 하나 생성한다
        ** 문자열로 쪼갤 때 String, 문자로 쪼갤 때 Charater
        ** 숫자를 우선 문자열 형식으로 바꿔준 뒤 문자로 쪼개준다.
    2.  for 문을 작성해서 변수[Object] 안의 글자 수 만큼[Object.count-1] Object의 index0 부터 Array에 순서대로 추가를해준다.
        for i in 0...Object.count-1{
            Array.append(Object[Object.index(Object.startIndex, offsetBy: i)])
        }
    3.  바뀌어있는 배열을 확인해본다
        print(Array)
 */
