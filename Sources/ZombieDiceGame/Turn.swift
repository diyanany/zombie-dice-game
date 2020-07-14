import GameDie

// This class represents a turn of a player for one round
public class Turn {
    var cup: Cup = Cup()
    
    public init() {}
}

extension Turn {
    public func roll(_ footprints: Array<(DieFace, String)> = []) -> Array<(DieFace, String)> {
        var drawnDice = cup.draw(3 - footprints.count)
        for footprint in footprints {
            switch footprint.1 {
                case "It is a green die.":
                    drawnDice.append(Dice.greenDie)
                case "It is a yellow die.":
                    drawnDice.append(Dice.yellowDie)
                case "It is a red die.":
                    drawnDice.append(Dice.redDie)
                default: 
                    break
            }
            
        }

        var rolledDice: Array<(DieFace, String)> = []
        for drawnDie in drawnDice {
            let randomNumber = Int.random(in: 0..<6)
            rolledDice.append((drawnDie.0.faces[randomNumber], drawnDie.1))
        }

        return rolledDice
    }
}