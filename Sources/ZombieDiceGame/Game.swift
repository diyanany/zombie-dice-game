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
                player.resetLives()
                print("It is \(player.name)'s turn")

                print("\(player.name) has \(player.score) points.")
                print("\(player.name) has \(player.lives) lives.")

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
                print("\(self.winner) WINS!")
            }
        }
    }
}