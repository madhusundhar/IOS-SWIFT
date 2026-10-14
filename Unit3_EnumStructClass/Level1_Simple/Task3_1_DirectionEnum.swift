import Foundation

print("=== Task 3.1: Direction Enum ===")

enum Direction {
    case north
    case south
    case east
    case west
}

let currentDirection: Direction = .north

switch currentDirection {
case .north:
    print("Heading North towards the mountains.")
case .south:
    print("Heading South towards the coast.")
case .east:
    print("Heading East towards the sunrise.")
case .west:
    print("Heading West towards the sunset.")
}

func printDirection(_ dir: Direction) {
    switch dir {
    case .north: print("Direction: North")
    case .south: print("Direction: South")
    case .east:  print("Direction: East")
    case .west:  print("Direction: West")
    }
}

printDirection(.east)
printDirection(.south)
