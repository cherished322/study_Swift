//
//  num4344.swift
//  Study
//
//  Created by 강태윤 on 2020/12/11.
//
/*
 문제
 대학생 새내기들의 90%는 자신이 반에서 평균은 넘는다고 생각한다. 당신은 그들에게 슬픈 진실을 알려줘야 한다.

 입력
 첫째 줄에는 테스트 케이스의 개수 C가 주어진다.

 둘째 줄부터 각 테스트 케이스마다 학생의 수 N(1 ≤ N ≤ 1000, N은 정수)이 첫 수로 주어지고, 이어서 N명의 점수가 주어진다. 점수는 0보다 크거나 같고, 100보다 작거나 같은 정수이다.

 출력
 각 케이스마다 한 줄씩 평균을 넘는 학생들의 비율을 반올림하여 소수점 셋째 자리까지 출력한다.

 예제 입력 1
 5
 5 50 50 70 80 100
 7 100 95 90 80 70 60 50
 3 70 90 80
 3 70 90 81
 9 100 99 98 97 96 95 94 93 91
 예제 출력 1
 40.000%
 57.143%
 33.333%
 66.667%
 55.556%
 */
import Foundation

func num4344(){
//    let numberOfTestCase = Int(readLine()!)!
//
//    var scoreSum: Double = 0
//    var stuCount: Int = 0
//    var highScore: Double = 0
//
//    if numberOfTestCase >= 1 && numberOfTestCase <= 1000{
//        for _ in 0..<numberOfTestCase{
//            let numberOfStuScores = readLine()
//            if let optional = numberOfStuScores {
//                let score_array = optional.split(separator: " ")
//                if Int(score_array[0]) == score_array.count-1 {
//                    for i in 1...score_array.count-1 {
//                        if  Int(score_array[i])! >= 0 && Int(score_array[i])! <= 100{
//                            scoreSum = scoreSum + Double(score_array[i])!
//                            if i == score_array.count-1{
//                                scoreSum = scoreSum / Double(i)
//
//                                for i in 1...score_array.count-1{
//                                    if Double(score_array[i])! > scoreSum {
//                                        stuCount += 1
//                                    }
//
//                                }
//                                highScore = Double(stuCount) / Double(score_array.count - 1)
//                                let output = round(highScore * 100000) / 1000
//                                print("\(output)%")
//                                scoreSum = 0
//                                stuCount = 0
//                            }
//                        }
//                    }
//                }else {print("Error")}
//            }
//        }
//    } else {print("Error")}
    
    let count: Int = Int(readLine()!)!

    for _ in 0..<count{
        var result: Int = 0
        var numArr: [Int] = readLine()!.split(separator: " ").map{ Int($0)!}
        let studentNum: Int = numArr[0]
        numArr.removeFirst()
        
        for i in 0..<studentNum{
            if numArr[i] > numArr.reduce(0, { $0 + $1}) / studentNum{
                result += 1
            }
        }
       

        print(String(format: "%.3f", Float(result) / Float(studentNum) * 100),"%",separator: "")
    }

}


//MARK: - Tip
/*
    배열의 첫 자리를 지우기 Array.removeFirst()
    ** .map 잘 활용하기
    추축컨데 $0 값이 배열의 각 인자를 대신해주는 듯 함
    사용법 예시
     let cast = ["Vivien", "Marlon", "Kim", "Karl"]
     let lowercaseNames = cast.map { $0.lowercased() }
     // 'lowercaseNames' == ["vivien", "marlon", "kim", "karl"]
     let letterCounts = cast.map { $0.count }
     // 'letterCounts' == [6, 6, 3, 4]

 
 
 */
