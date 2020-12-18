//
//  num1008.swift
//  Study
//
//  Created by 강태윤 on 2020/12/08.
//
/*
     문제
     두 정수 A와 B를 입력받은 다음, A/B를 출력하는 프로그램을 작성하시오.

     입력
     첫째 줄에 A와 B가 주어진다. (0 < A, B < 10)

     출력
     첫째 줄에 A/B를 출력한다. 실제 정답과 출력값의 절대오차 또는 상대오차가 10-9 이하이면 정답이다.

     예제 입력 1
     1 3
     예제 출력 1
     0.33333333333333333333333333333333
     10-9 이하의 오차를 허용한다는 말은 꼭 소수 9번째 자리까지만 출력하라는 뜻이 아니다.

     예제 입력 2
     4 5
     예제 출력 2
     0.8
 */
import Foundation

func num1008(){
    let input = readLine()
    if let optionalB = input {
        
        //방법 1. 각 각 입력된 값을 강제적으로 Double형으로 지정 후 계산해서 result에 넣고 출력한다,
        let some_array = optionalB.components(separatedBy: " ")
        let result = Double(some_array[0])! / Double(some_array[1])!
        
        //방법 2. 각 각 입력된 값을 a, b로 나누어 0이 아닌 Double로 선언 및 초기화 후 String의 format을 이용해 9번째 자리까지만 표기한다
        //let a = Double(some_array[0]) ?? 0
        //let b = Double(some_array[1]) ?? 0
        //let result = String(format: "%.9f", a/b)
        print(result)
    }
}

        
        //MARK: - A ?? B -> Nil coalescing operator
        /*
          **  : 어떤 값이 nil일 수 있는 상황에 nil 대신 다른 디폴트 값을 적용할 때
                                                 사용한다 A가 nil이 아니라면 A 값을 갖고 nil 이라면 B 값을 갖게 한다.
          ** A ?? B 의 확장
             A != nil ? A! : B
             (true/false ? A : B) 구조.
         */

