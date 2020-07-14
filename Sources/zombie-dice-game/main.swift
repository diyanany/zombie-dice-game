import ZombieDiceGame

print("Starting the Zombie Dice game...")
var players:[Player] = []
var totalPlayers = 0
repeat {
    print("Enter number of players: (2 - 8): ")
    if let number = readLine() {
        totalPlayers = Int(number) ?? 0
    } 
} while totalPlayers < 2 || totalPlayers > 8


for i in 1...totalPlayers {
    print("Enter player\(i) name: ")
    let playerName = readLine()
    players.append(Player(name: playerName!))
}

let game = Game(players)
game.run()
