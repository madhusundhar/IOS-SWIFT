import Foundation

print("=== Task 3.8: Planet Enum (CaseIterable & Order from Sun) ===")

enum Planet: String, CaseIterable {
    case mercury = "Mercury"
    case venus = "Venus"
    case earth = "Earth"
    case mars = "Mars"
    case jupiter = "Jupiter"
    case saturn = "Saturn"
    case uranus = "Uranus"
    case neptune = "Neptune"

    var orderFromSun: Int {
        switch self {
        case .mercury: return 1
        case .venus:   return 2
        case .earth:   return 3
        case .mars:    return 4
        case .jupiter: return 5
        case .saturn:  return 6
        case .uranus:  return 7
        case .neptune: return 8
        }
    }
}

print("Total Planets in Solar System: \(Planet.allCases.count)")
for planet in Planet.allCases {
    print("Planet #\(planet.orderFromSun): \(planet.rawValue)")
}
