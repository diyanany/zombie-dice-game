public class Player {
    let name: String
    var score: Int = 0
    var lifes: Int = 3
    var isFinishedTurn: Bool = true

    public init(name: String = "") {
        self.name = name
    }
}