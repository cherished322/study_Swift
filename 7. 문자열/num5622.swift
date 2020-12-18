//
//  num5622.swift
//  Study
//
//  Created by 강태윤 on 2020/12/18.
//
/*
 문제
 상근이의 할머니는 아래 그림과 같이 오래된 다이얼 전화기를 사용한다.



 전화를 걸고 싶은 번호가 있다면, 숫자를 하나를 누른 다음에 금속 핀이 있는 곳 까지 시계방향으로 돌려야 한다. 숫자를 하나 누르면 다이얼이 처음 위치로 돌아가고, 다음 숫자를 누르려면 다이얼을 처음 위치에서 다시 돌려야 한다.

 숫자 1을 걸려면 총 2초가 필요하다. 1보다 큰 수를 거는데 걸리는 시간은 이보다 더 걸리며, 한 칸 옆에 있는 숫자를 걸기 위해선 1초씩 더 걸린다.

 상근이의 할머니는 전화 번호를 각 숫자에 해당하는 문자로 외운다. 즉, 어떤 단어를 걸 때, 각 알파벳에 해당하는 숫자를 걸면 된다. 예를 들어, UNUCIC는 868242와 같다.

 할머니가 외운 단어가 주어졌을 때, 이 전화를 걸기 위해서 필요한 최소 시간을 구하는 프로그램을 작성하시오.

 입력
 첫째 줄에 알파벳 대문자로 이루어진 단어가 주어진다. 단어는 2글자~15글자로 이루어져 있다.

 출력
 첫째 줄에 다이얼을 걸기 위해서 필요한 최소 시간을 출력한다.

 예제 입력 1
 UNUCIC
 예제 출력 1
 36
 */
import Foundation

func num5622(){
    let input = String(readLine()!)
    var checkTime: Int = 0
    var inputString: [String] = []
    for i in input{
        inputString.append(String(i))
    }
    if inputString.count >= 2 && inputString.count <= 15{
        for i in 0..<inputString.count{
            if String(inputString[i]) == "A" || String(inputString[i] ) == "B" || String(inputString[i]) == "C"{
                checkTime += 3
            }else if String(inputString[i]) == "D" || String(inputString[i]) == "E" || String(inputString[i]) == "F"{
                checkTime += 4
            }else if String(inputString[i]) == "G" || String(inputString[i]) == "H" || String(inputString[i]) == "I"{
                checkTime += 5
            }else if String(inputString[i]) == "J" || String(inputString[i]) == "K" || String(inputString[i]) == "L"{
                checkTime += 6
            }else if String(inputString[i]) == "M" || String(inputString[i]) == "N" || String(inputString[i]) == "O"{
                checkTime += 7
            }else if String(inputString[i]) == "P" || String(inputString[i]) == "Q" || String(inputString[i]) == "R" || String(inputString[i]) == "S"{
                checkTime += 8
            }else if String(inputString[i]) == "T" || String(inputString[i]) == "U" || String(inputString[i]) == "V"{
                checkTime += 9
            }else if String(inputString[i]) == "W" || String(inputString[i]) == "X" || String(inputString[i]) == "Y" || String(inputString[i]) == "Z"{
                checkTime += 10
            }
        }
    }
    print(checkTime)
}
// 백준 홈페이지에서 사진을 봐야됌 불친절한 문제.
