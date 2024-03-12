//
//  Game.swift
//  Bullseye
//
//  Created by Temur Chitashvili on 13.01.24.
//

import Foundation

struct Game{
    var target: Int = Int.random(in: 1...100)
    var score: Int = 0
    var round: Int = 1
    var leaderboardEntries : [LeaderboardEntry] = []
    
    init(loadTestData: Bool = false){
        if loadTestData{
            addToLeaderBoard(score: 100)
            addToLeaderBoard(score: 200)
            addToLeaderBoard(score: 50)
            addToLeaderBoard(score: 40)
            addToLeaderBoard(score: 90)
            addToLeaderBoard(score: 10)
            
        }
    }
    
    func points(sliderValue: Int) -> Int{
        let difference = abs(target - sliderValue)
        let bonus : Int
        if difference == 0 {
            bonus = 100
        } else if difference <= 2 {
            bonus = 50
        }else {
            bonus = 0
        }
        return 100 - difference + bonus
    }
    mutating func startNewRound(points:Int){
        addToLeaderBoard(score: points)
        score += points
        round += 1
        target = Int.random(in: 1...100)
     
    }
    mutating func restart() {
        score = 0
        round = 1
        target = Int.random(in: 1...100)
    }
    mutating func addToLeaderBoard(score: Int){
        leaderboardEntries.append(LeaderboardEntry(score: score, date: Date()))
        leaderboardEntries.sort{entry1,entry2 in
            entry1.score > entry2.score
        }
    }
}
struct LeaderboardEntry{
    let score: Int
    let date: Date
}
