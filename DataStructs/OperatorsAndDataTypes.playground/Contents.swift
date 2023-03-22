let levelScore = 10
var gameScore = 0
gameScore += levelScore
print("the game's score is \(gameScore)")
var levelBonusScore = 10.0
levelBonusScore = 20
print("The level's bonus score is \(levelBonusScore).")

gameScore += Int(levelBonusScore)
print("The game's final score is \(gameScore).")

let levelLowestScore = 50
let levelHighestScrore = 99
let levels = 10
let levelScoreDifference = levelHighestScrore - levelLowestScore
let levelAverageScore = Float(levelScoreDifference) / Float(levels)
print("The level's average score is \(levelAverageScore)")
