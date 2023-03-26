let unlockTreasureChest = {
    (inventory: inout Int) -> () in
    inventory += 100
}

var goldBars: Int = 0
unlockTreasureChest(&goldBars)
print(goldBars)
unlockTreasureChest(&goldBars)
print(goldBars)
unlockTreasureChest(&goldBars)
print(goldBars)
