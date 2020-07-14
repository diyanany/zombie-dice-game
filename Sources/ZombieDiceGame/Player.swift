public class Player {
    let name: String
    var score: Int = 0
    var lives: Int = 3
    var footprints: Int = 0
    var isFinishedTurn: Bool = true

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
    public func resetFootPrints() {
        self.footprints = 0
    }
}

extension Player {
    public func isWinner() -> Bool {
        return score >= 13
    }
}