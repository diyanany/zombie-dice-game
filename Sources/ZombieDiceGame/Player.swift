import GameDie

public class Player {
    let name: String
    var score: Int = 0
    var lives: Int = 3
    var isFinishedTurn: Bool = true
    var drawnFootprints: Array<(DieFace, String)> = []

    public init(name: String = "") {
        self.name = name
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