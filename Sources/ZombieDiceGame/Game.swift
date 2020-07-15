/// This class implements the game engine.
public class Game {
    var players: Array<Player> = []
    var isFinished: Bool = false
    var winner: String = "" 

    public init(_ players: [Player]) {
        self.players = players
    }
}

extension Game {
    /// This function starts the game.
    public func run() {
        // Loop until the game has no winner. 
        while !self.isFinished {
            // This for loop represents a turn for each player.
            for player in self.players {
                print("===")
                print("Scores:")
                for p in self.players {
                    print("\(p.name) has \(p.score) points.")
                }
                print("It is \(player.name)'s turn")

                // On each player's turn reset the number of lives because the player can be shotgunned 3 times max. 
                player.resetLives()
                // brainCounter contains the value of current points on player's turn.
                var brainCounter: Int = 0

                // On each turn a player can roll dice until they finish or get shotgunned 3 times.
                while player.isFinishedTurn {
                    print("Enter \"roll\" to Keep Going or \"finish\" to Stop and Score.")

                    // The action of the player.
                    let command = readLine() 

                    switch command {
                        case "finish":
                            player.score = player.score + brainCounter
                            player.isFinishedTurn = false
                        case "roll":
                            let turn = Turn()
                            // If the player has drawn footprint they are included in the next roll.
                            let roll = turn.roll(player.drawnFootprints)
                            player.resetFootprints()
                            print("===")
                            print("Drawn dice:")
                            // For each dieFace from the rolled dice the result is calculated. 
                            for item in roll {
                               print("\(item.0) \(item.1)")
                               if item.0 == DieFace.brain {
                                   // If the face of the current die is a brain then the player wins 1 point added to their current points.
                                   brainCounter = brainCounter + 1
                               }
                               else if item.0 == DieFace.shotgun {
                                   // If the facce of the current die is a shotgun the player loses 1 life.
                                   player.lives = player.lives - 1
                               }
                               else if item.0 == DieFace.footprints{
                                   // If the face of the current dice is a footprint, it is added to the next roll.
                                   player.drawnFootprints.append(item)
                               }
                            }
                            print("Result: \(brainCounter)x\(DieFace.brain.rawValue), \(3 - player.lives)x\(DieFace.shotgun.rawValue), \(player.drawnFootprints.count)x\(DieFace.footprints.rawValue)")
                            
                            // If the player gets shotgunned 3 or more times then their turn is over.
                            if player.lives <= 0 {
                                 player.isFinishedTurn = false
                                 print("\(player.name) got SHOTGUNNED!")
                            }
                        default:
                            print("Unknown command!")
                    }
                }
                
                // After each player's turn check there is a winner.
                player.isFinishedTurn = true
                if !self.isFinished {
                    self.isFinished = player.isWinner()

                    // Take the name of the winner.
                    if self.isFinished {
                        self.winner = player.name
                    }
                }
            }
            
            if self.isFinished {
                print("===\n\(self.winner) WINS!\n===")
                print("Play again with the same players?\nEnter yes or no.")
                let playAgain = readLine()
                if(playAgain == "yes"){
                    self.isFinished = false
                    for player in self.players {
                        player.resetScore()
                        player.resetLives()
                        player.resetFootprints()
                    }
                }
            }
        }
    }
}