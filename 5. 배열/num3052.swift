//
//  num3052.swift
//  Study
//
//  Created by 강태윤 on 2020/12/10.
//
/*
 문제
 두 자연수 A와 B가 있을 때, A%B는 A를 B로 나눈 나머지 이다. 예를 들어, 7, 14, 27, 38을 3으로 나눈 나머지는 1, 2, 0, 2이다.

 수 10개를 입력받은 뒤, 이를 42로 나눈 나머지를 구한다. 그 다음 서로 다른 값이 몇 개 있는지 출력하는 프로그램을 작성하시오.

 입력
 첫째 줄부터 열번째 줄 까지 숫자가 한 줄에 하나씩 주어진다. 이 숫자는 1,000보다 작거나 같고, 음이 아닌 정수이다.

 출력
 첫째 줄에, 42로 나누었을 때, 서로 다른 나머지가 몇 개 있는지 출력한다.

 예제 입력 1
 39
 40
 41
 42
 43
 44
 82
 83
 84
 85
 예제 출력 1
 6
 */
import Foundation

func num3052(){
    var n = 1
    var result = 0
    var result_array: [Int] = []
    var some_array: [Int] = []
    (0..<10).forEach { _ in
        n = Int(readLine()!)!
        some_array.append(n)
    }
    if n >= 0 && n <= 1000 {
        for i in 0..<some_array.count{
            result = some_array[i] % 42
            result_array.append(result)
        }
    }
    let check = Set(result_array)
    print(check.count)
}

//MARK: - Tip
/*
    배열에서 중복된 값을 없애고 싶다면 Set을 사용하면 된다
   
    let ingredients: Set = ["cocoa beans", "sugar", "cocoa butter", "salt"]
    if ingredients.contains("sugar") {
        print("No thanks, too sweet.")
    }
    // Prints "No thanks, too sweet."
    - Set은 대충 이런 느낌
 
    let some_obj = Set(some_array)
    - 실제 사용/ 이미 데이터가 들어있는 배열 안에서 중복값을 없앨 때.
 */
