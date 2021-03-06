//
//  num4673.swift
//  Study
//
//  Created by 강태윤 on 2020/12/14.
//
/*
     문제
     셀프 넘버는 1949년 인도 수학자 D.R. Kaprekar가 이름 붙였다. 양의 정수 n에 대해서 d(n)을 n과 n의 각 자리수를 더하는 함수라고 정의하자. 예를 들어, d(75) = 75+7+5 = 87이다.

     양의 정수 n이 주어졌을 때, 이 수를 시작해서 n, d(n), d(d(n)), d(d(d(n))), ...과 같은 무한 수열을 만들 수 있다.

     예를 들어, 33으로 시작한다면 다음 수는 33 + 3 + 3 = 39이고, 그 다음 수는 39 + 3 + 9 = 51, 다음 수는 51 + 5 + 1 = 57이다. 이런식으로 다음과 같은 수열을 만들 수 있다.

     33, 39, 51, 57, 69, 84, 96, 111, 114, 120, 123, 129, 141, ...

     n을 d(n)의 생성자라고 한다. 위의 수열에서 33은 39의 생성자이고, 39는 51의 생성자, 51은 57의 생성자이다. 생성자가 한 개보다 많은 경우도 있다. 예를 들어, 101은 생성자가 2개(91과 100) 있다.

     생성자가 없는 숫자를 셀프 넘버라고 한다. 100보다 작은 셀프 넘버는 총 13개가 있다. 1, 3, 5, 7, 9, 20, 31, 42, 53, 64, 75, 86, 97

     10000보다 작거나 같은 셀프 넘버를 한 줄에 하나씩 출력하는 프로그램을 작성하시오.

     입력
     입력은 없다.

     출력
     10,000보다 작거나 같은 셀프 넘버를 한 줄에 하나씩 증가하는 순서로 출력한다.

     예제 입력 1
     입력 없음.
     예제 출력 1
     1
     3
     5
     7
     9
     20
     31
     42
     53
     64
      |
      |       <-- a lot more numbers
      |
     9903
     9914
     9925
     9927
     9938
     9949
     9960
     9971
     9982
     9993
 */
import Foundation

var new_number: Int = 0
var some_Array: [Int] = []

func num4673(){
    select()
}

func select(){
    
    for _ in 1...10001{
        some_Array.append(0)
    }
    
    for i in 1...some_Array.count{
        new_number = i + i/10000 + (i/1000)%10 + (i/100)%10 + (i/10)%10 + i%10
        if new_number <= 10000{
            some_Array[new_number] = 1
        }
    }
    for i in 1..<some_Array.count{
        if some_Array[i] == 0{
            if i <= 10000 { print(i) }
        }
    }
}


/* - 이 코드 사용
 #include <stdio.h>
 int self_num();
 int main() {
     self_num();
     return 0;
 }
 int self_num(){
     int i, arr[10001] = {0}, res = 0;
     for (i = 1; i <= 10000; i++){
         if(i < 10){
             res = i+i;
             arr[res] = 1;
         }
         else if(i < 100){
             res = i + (i/10) + (i%10);
             arr[res] = 1;
         }
         else if(i < 1000){
             res = i + (i/100) + ((i%100)/10) + ((i%100)%10);
             arr[res] = 1;
         }
         else if(i < 10000){
             res = i + (i/1000) + ((i%1000)/100) + (((i%1000)%100)/10) + (((i%1000)%100)%10);
             if (res <= 10000)    arr[res] = 1;
         }
     }
     
     for(i = 1; i <= 10000; i++){
         if(arr[i] != 1)
             printf("%d\n", i);
     }
     return 0;
 }
 */
