import GameDie

public class Dice {
   public static let greenDie = try! Die(
       faces: Array(repeating: DieFace.brain, count: 3) + 
              Array(repeating: DieFace.shotgun, count: 1) + 
              Array(repeating: DieFace.footprints, count: 2)
   )

   public static let yellowDie = try! Die(
       faces: Array(repeating: DieFace.brain, count: 2) + 
              Array(repeating: DieFace.shotgun, count: 2) + 
              Array(repeating: DieFace.footprints, count: 2)
   )

   public static let redDie = try! Die(
       faces: Array(repeating: DieFace.brain, count: 1) + 
              Array(repeating: DieFace.shotgun, count: 3) + 
              Array(repeating: DieFace.footprints, count: 2)
   )

    public init() {}
}