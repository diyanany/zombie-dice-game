import ZombieDiceGame

// let die = DieFace.brain
// print(die.description)

// let dice = Dice.greenDie
// print(dice)

let cup = Cup()
let drawn = cup.draw()
for item in drawn {
    print("Die")
    print(item)
}