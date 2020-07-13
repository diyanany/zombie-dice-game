import GameDie

public class Dice {
   public static let greenDie = try! (die: Die(
       faces: Array(repeating: DieFace.brain, count: 3) + 
              Array(repeating: DieFace.shotgun, count: 1) + 
              Array(repeating: DieFace.footprints, count: 2)
   ), color: "It is a green die.")

   public static let yellowDie = try! (die: Die(
       faces: Array(repeating: DieFace.brain, count: 2) + 
              Array(repeating: DieFace.shotgun, count: 2) + 
              Array(repeating: DieFace.footprints, count: 2)
   ), color: "It is a yellow die.")

   public static let redDie = try! (die: Die(
       faces: Array(repeating: DieFace.brain, count: 1) + 
              Array(repeating: DieFace.shotgun, count: 3) + 
              Array(repeating: DieFace.footprints, count: 2)
   ), color: "It is a red die.")

    public init() {}
}