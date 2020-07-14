import GameDie

/// This class represents the cup full of 13 different dice - 6 green dice, 4 yellow dice and 3 red dice. 
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
    /// This function take as an argument number of dice to be drawn.
    /// It randomly chooses numberOfDice dice and returns them to the calling object.
    public func draw(_ numberOfDice: Int = 3) -> Array<(Die<DieFace>, String)> {
        // drawnDice contains the result.
        var drawnDice: Array<(Die<DieFace>, String)> = []
        // Variable count take the value of numberOfDice because numberOfDice is immutable. 
        var count = numberOfDice

        // When count value is equal to 0 the while loop will terminate.
        while count > 0 {
            // randomNumber take random value between 0 and 12 because the total dice are 13.
            let randomNumber = Int.random(in: 0..<self.numberOfDice)
            // Add the random choosen dice in the drawnDice.
            drawnDice.append((cup[randomNumber].0, cup[randomNumber].1))
            count = count - 1
        }

        return drawnDice
    }
}

