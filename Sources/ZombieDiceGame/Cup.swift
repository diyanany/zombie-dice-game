import GameDie

public class Cup {
    var numberOfGreenDice: Int
    var numberOfYellowDice: Int
    var numberOfRedDice: Int
    var numberOfDice: Int {
        get {
            return numberOfGreenDice + numberOfYellowDice + numberOfRedDice
        }
    }
    public var cup: Array<(Die<DieFace>, String)>

    public init() {
        self.numberOfGreenDice = 6
        self.numberOfYellowDice = 4
        self.numberOfRedDice = 3
        self.cup = Array(repeating: Dice.greenDie, count: self.numberOfGreenDice) + 
                   Array(repeating: Dice.yellowDie, count: self.numberOfYellowDice) + 
                   Array(repeating: Dice.redDie, count: self.numberOfRedDice)
    }
}

extension Cup {
    public func draw(_ numberOfDice: Int = 3) -> Array<(Die<DieFace>, String)> {
        var drawnDice: Array<(Die<DieFace>, String)> = []
        var count = numberOfDice

        while count > 0 {
            let randomNumber = Int.random(in: 0..<self.numberOfDice)
            drawnDice.append((cup[randomNumber].0, cup[randomNumber].1))
            count = count - 1
        }

        return drawnDice
    }
}
