public class Game {
    var players: Array<Player> = []
    var isFinished: Bool = false
    var winner: String = "" 

    public init(_ players: Player...) {
        self.players = players
    }
}

extension Game {
    public func run() {
        while !self.isFinished {
            for player in self.players {
                print("===")
                print("Scores:")
                for p in self.players {
                    print("\(p.name) has \(p.score) points.")
                }
                print("It is \(player.name)'s turn")

                player.resetLives()
                var brainCounter: Int = 0
                while player.isFinishedTurn {
                    
                    let command = readLine() 

                    switch command {
                        case "finish":
                            player.score = player.score + brainCounter
                            player.isFinishedTurn = false
                        case "roll":
                            let turn = Turn()
                            let roll = turn.roll(player.drawnFootprints)
                            player.resetFootprints()
                            print("===")
                            print("Drawn dice:")
                            for item in roll {
                               print(item)
                               if item.0 == DieFace.brain {
                                   brainCounter = brainCounter + 1
                               }
                               else if item.0 == DieFace.shotgun {
                                   player.lives = player.lives - 1
                               }
                               else if item.0 == DieFace.footprints{
                                   player.drawnFootprints.append(item)
                               }
                            }
                            print("Result: \(brainCounter)x\(DieFace.brain.rawValue), \(3 - player.lives)x\(DieFace.shotgun.rawValue), \(player.drawnFootprints.count)x\(DieFace.footprints.rawValue)")
                            if player.lives <= 0 {
                                 player.isFinishedTurn = false
                                 print("\(player.name) got SHOTGUNNED!")
                            }
                        default:
                            print("Unknown command!")
                    }
                }
                
                player.isFinishedTurn = true
                if !self.isFinished {
                    self.isFinished = player.isWinner()

                    if self.isFinished {
                        self.winner = player.name
                    }
                }
            }
            
            if self.isFinished {
                print("===\n\(self.winner) WINS!\n===")
            }
        }
    }
}