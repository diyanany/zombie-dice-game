import GameDie

/// This class implements the players of the game.
public class Player {
    // Name of the Player.
    let name: String

    // How many brains the player has eaten.
    var score: Int = 0

    // Number of times that the player can be shotgunned in a turn.
    var lives: Int = 3

    // While isFinishedTurn is equal to true the player's turn is not over.
    var isFinishedTurn: Bool = true

    // All drawn footprint faces of dice in a player's turn.
    // These dice will be included in the next player's roll. 
    var drawnFootprints: Array<(DieFace, String)> = []

    public init(name: String = "") {
        self.name = name
    }
}

extension Player {
    public func resetScore() {
        self.score = 0
    }
}

extension Player {
    public func resetLives() {
        self.lives = 3
    }
}

extension Player {
    public func resetFootprints() {
        self.drawnFootprints = []
    }
}

extension Player {
    public func isWinner() -> Bool {
        return score >= 13
    }
}