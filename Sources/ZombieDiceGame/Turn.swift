// This class represents a turn of a player for one round
public class Turn {
    var cup: Cup = Cup()
    
    public init() {}
}

extension Turn {
    public func roll(_ numberOfDice: Int = 3) -> Array<(DieFace, String)> {
        let drawnDice = cup.draw(numberOfDice)
        var rolledDice: Array<(DieFace, String)> = []

        for drawnDie in drawnDice {
            let randomNumber = Int.random(in: 0..<6)
            rolledDice.append((drawnDie.0.faces[randomNumber], drawnDie.1))
        }

        return rolledDice
    }
}