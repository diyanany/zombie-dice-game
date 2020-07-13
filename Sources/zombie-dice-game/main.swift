import ZombieDiceGame

// let die = DieFace.brain
// print(die.description)

// let dice = Dice.greenDie
// print(dice)

// let cup = Cup()
// let drawn = cup.draw()
// for item in drawn {
//     print("Die")
//     print(item)
// }

// let turn = Turn()
// let roll = turn.roll(3)
// for item in roll {
//     print(item)
// }

let player1 = Player(name: "Lucho")
let player2 = Player(name: "Didi")
var game = Game(player1, player2)
game.run()
