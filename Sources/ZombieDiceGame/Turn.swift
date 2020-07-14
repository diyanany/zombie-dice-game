import GameDie

/// This class represents a turn of a player for one round.
public class Turn {
    var cup: Cup = Cup()
    
    public init() {}
}

extension Turn {
    /// This function rolls drawn dice and returns the result of the roll.
    /// The argument could be empty or not. 
    /// If it is not empty the roll will contain footprints dice drawn on the previous roll.
    public func roll(_ footprints: Array<(DieFace, String)> = []) -> Array<(DieFace, String)> {
        // drawnDice take the number of dice to be drawn. If the function argument is not empty the drawnDice will be 3 minus the number of footprints.
        var drawnDice = cup.draw(3 - footprints.count)
        
        for footprint in footprints {
            switch footprint.1 {
                case "It is a green 🎲.":
                    drawnDice.append(Dice.greenDie)
                case "It is a yellow 🎲.":
                    drawnDice.append(Dice.yellowDie)
                case "It is a red 🎲.":
                    drawnDice.append(Dice.redDie)
                default: 
                    break
            }
        }

        // rolledDice contains the result to be returned.
        var rolledDice: Array<(DieFace, String)> = []

        // For each die a random face is chosen.
        for drawnDie in drawnDice {
            let randomNumber = Int.random(in: 0..<6)
            rolledDice.append((drawnDie.0.faces[randomNumber], drawnDie.1))
        }

        return rolledDice
    }
}