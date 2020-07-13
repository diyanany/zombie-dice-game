public enum DieFace: String, CustomStringConvertible {
    case brain = "🧠"
    case shotgun = "💥"
    case footprints = "👣"    
}

public extension DieFace {
    var description: String {
        switch self {
        case .brain: 
            return "\(rawValue) - you ate your victim's brain!"
        case .shotgun: 
            return "\(rawValue) - he fought back!"
        case .footprints: 
            return "\(rawValue) - your victim escaped."            
        }
    }
}