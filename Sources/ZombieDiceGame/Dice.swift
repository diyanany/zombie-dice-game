import GameDie

/// This class implements the different number of faces for each die color. 
public class Dice {
   public static let greenDie = try! (die: Die(
       faces: Array(repeating: DieFace.brain, count: 3) + 
              Array(repeating: DieFace.shotgun, count: 1) + 
              Array(repeating: DieFace.footprints, count: 2)
   ), color: "It is a green 🎲.")

   public static let yellowDie = try! (die: Die(
       faces: Array(repeating: DieFace.brain, count: 2) + 
              Array(repeating: DieFace.shotgun, count: 2) + 
              Array(repeating: DieFace.footprints, count: 2)
   ), color: "It is a yellow 🎲.")

   public static let redDie = try! (die: Die(
       faces: Array(repeating: DieFace.brain, count: 1) + 
              Array(repeating: DieFace.shotgun, count: 3) + 
              Array(repeating: DieFace.footprints, count: 2)
   ), color: "It is a red 🎲.")

    public init() {}
}