import ZombieDiceGame

let turn = Turn()
let roll = turn.roll(3)
for item in roll {
    print(item)
}