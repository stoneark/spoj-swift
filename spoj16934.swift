// http://www.spoj.com/problems/SPTTRN2/
// SPTTRN2 - Straight Line Spiral Pattern (Act 2)

enum Direction: Int {
    case down, right, top, left
    static func count() -> Int{
        return Direction.left.rawValue + 1
    }
    func next() -> Direction {
        return Direction.init(rawValue: (self.rawValue + 1) % Direction.count())!
    }
}

struct Pointer {
    var x = 0
    var y = 0
    var boundaryRight = 0
    var boundaryBottom = 0
    var boundaryLeft = 0
    var boundaryTop = 0
    
    func offset(by direction: Direction) -> Pointer {
        var pointer = self
        switch direction {
        case .right:
            pointer.y = pointer.y + 1
        case .down:
            pointer.x = pointer.x + 1
        case .left:
            pointer.y = pointer.y - 1
        case .top:
            pointer.x = pointer.x - 1
        }
        return pointer
    }
    
    mutating func checkDirection(direction: inout Direction) {
        switch direction {
        case .right:
            if y >= boundaryRight {
                direction = direction.next()
                boundaryRight = boundaryRight - 2
            }
        case .down:
            if x >= boundaryBottom {
                direction = direction.next()
                boundaryBottom = boundaryBottom - 2
            }
        case .left:
            if y <= boundaryLeft {
                direction = direction.next()
                boundaryLeft = boundaryLeft + 2
            }
        case .top:
            if x <= boundaryTop {
                direction = direction.next()
                boundaryTop = boundaryTop + 2
            }
        }
    }
}

let t = Int(readLine()!)!
for index in 0..<t {
    // Inputs of some testcases include illegals. Some line may have extra spaces, like "11 ", leading runtime error when transforming from String to Int.
    // So here do some tricks to avoid.
    let testcase = readLine()!
    let parameters = testcase.characters.split(separator: " ").map(String.init)
    let s = Int(parameters[0])!
    var matrix: [[Character]] = Array.init(repeating: Array.init(repeating: ".", count: s), count: s)
    var dir: Direction = .down

    func checkPointerLegal(pointer: Pointer) -> Bool {
        return pointer.x >= 0 && pointer.x < s && pointer.y >= 0 && pointer.y < s
    }

    var pointer = Pointer(x: 0, y: 0, boundaryRight: s-1, boundaryBottom: s-1, boundaryLeft: 2, boundaryTop: 0)

    func checkCanContinue() -> Bool {
        let point1 = pointer.offset(by: dir)
        let point2 = pointer.offset(by: dir.next())
        let point3 = pointer.offset(by: dir.next().next().next())
        var flag = true
        if checkPointerLegal(pointer: point1) {
            flag = flag && (matrix[point1.x][point1.y] == ".")
        }
        
        if checkPointerLegal(pointer: point2) {
            flag = flag && (matrix[point2.x][point2.y] == ".")
        }
        
        if checkPointerLegal(pointer: point3) {
            flag = flag && (matrix[point3.x][point3.y] == ".")
        }
        return flag
    }

    while checkCanContinue() {
        pointer.checkDirection(direction: &dir)
        matrix[pointer.x][pointer.y] = "*"
        pointer = pointer.offset(by: dir)
    }

    // print grid matrix
    for i in 0..<matrix.count {
        let gridLine = matrix[i]
        var temp = ""
        for j in 0..<gridLine.count {
            temp.append(gridLine[j])
        }
        print(temp)
    }
}