let levels = 10 ,freeLevels = 4, bonusLevel = 3

for current in 1...levels {
    if current == bonusLevel {
        print("Skip bonus level \(bonusLevel)")
        continue
    }
    print("Play level \(current)")
    
    if current == freeLevels {
        print("You have played all \(freeLevels) free levels. Buy the game to play the remaining \(levels - freeLevels) levels.")
         break
    }
}
