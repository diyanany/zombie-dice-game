public class Game {
    var players: Array<Player> = []

    public init(_ players: Player...) {
        self.players = players
    }
}

extension Game {
    public func run() {  
        while true {
            for player in self.players {
                player.resetLifes()
                print("It is \(player.name)'s turn")

                print("\(player.name) has \(player.score) points.")
                print("\(player.name) has \(player.lives) lives.")

                var brainCounter: Int = 0
                while player.isFinishedTurn {
                    let command = readLine() 
                    switch command {
                        case "finish":
                            print("finish")
                            player.score = player.score + brainCounter
                            player.isFinishedTurn = false
                        case "roll":
                            print("roll")
                            let turn = Turn()
                            let roll = turn.roll(3)
                            for item in roll {
                               print(item)
                               if item.0 == DieFace.brain {
                                   brainCounter = brainCounter + 1
                               }
                               else if item.0 == DieFace.shotgun {
                                   player.lives = player.lives - 1
                               }
                               else if item.0 == DieFace.footprints{
                                   player.footprints = player.footprints + 1
                               }
                            }
                        case "draw":
                            print("draw")
                        default:
                            print("Unknown command!")
                    }
                }
                
                player.isFinishedTurn = true
            }
        }
    }
}