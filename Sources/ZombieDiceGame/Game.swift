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
                print("It is \(player.name)'s turn")

                while player.isFinishedTurn {
                    let command = readLine() 
                    switch command {
                        case "finish":
                            print("finish")
                            player.isFinishedTurn = false
                        case "roll":
                            print("roll")
                            let turn = Turn()
                            let roll = turn.roll(3)
                            for item in roll {
                               print(item)
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