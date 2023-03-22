let levelScores = [10, 20, 30, 40, 50, 60, 70]

for (level, score) in levelScores.enumerated() {
    print("The score of level \(level) is \(score).")
}

var gameScore = 0

for score in levelScores {
    gameScore += score
}

print("Final game score is \(gameScore)")


let days = ["Monday", "Tuesday", "Wednesday", "Thursday", "Friday", "Saturday", "Sunday"]

let temperatures = [70, 75, 80, 85, 90, 95, 100]

for index in 0...days.count-1 {
    print("\(days[index]) - Temperature = \(temperatures[index]) °F.")
}
