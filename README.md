# Zombie Dice Game
This project is the "Zombie Dice" game built as a console application in Swift 5. The project is part of the following course: Programming in Swift, taught at FMI in 2019/2020.

## Technologies used
- Swift version 5.2.4 (swift-5.2.4-RELEASE);
- Swift Tool Chain for Ubuntu18.04 available at https://swift.org/builds/swift-5.2.4-release/ubuntu1804/swift-5.2.4-RELEASE/swift-5.2.4-RELEASE-ubuntu18.04.tar.gz;
- Swift Package Manager;
- Ubuntu18.04 running under Windows 10 Hyper-V Manager;
- VS Code.

## Dependencies
It has the following package dependency: GameDie package available at https://github.com/SwiftFMI/GameDie.git.

## How to Run the project
1. Clone this project using `git clone https://github.com/diyanany/zombie-dice-game.git`.
2. Open a terminal in the root folder.
3. Run `swift build` to build the project.
4. Run `swift run` to run the project.

## Game Rules
After you run the game enter the number of players(2 - 8). Enter a name for each player and start eating brains!

### On your turn you can:
- `roll`: to roll the Zombie dice;
- `finish`: to end your turn.
### About the dice
There are three types of dice in three colors(6 green dice, 4 yellow dice and 3 red dice):
green dice - 3x🧠2x💥1x👣
yellow dice - 2x🧠2x💥2x👣
red dice - 1x🧠2x💥3x👣
- 🧠 - you ate your victim's brain! When face on the drawn dice has this symbol, you win 1 point for your current turn. Your current points are added to your total points after the end of your turn(this is when you type `finish`).
- 💥 - he fought back! If you rolled three shotguns, your turn is over and your current points are lost. Otherwise, you can choose to stop and score `finish`, or continue `roll`.
- 👣 - your victim escaped. When one or more drawn dice has a face with this symbol, they will be included in the next `roll` authomatically. You should be very careful with this symbol. Why? Because of the color of the dice.

### End of the game
Game is finished when one of the players first scores 13 points.

## Sources
- https://en.wikipedia.org/wiki/Zombie_Dice
- http://www.sjgames.com/dice/zombiedice/img/ZDRules_English.pdf