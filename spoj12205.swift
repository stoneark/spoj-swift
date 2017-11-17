// http://www.spoj.com/problems/HS12MBR/
// HS12MBR - Minimum Bounding Rectangle

let t = Int(readLine()!)!
for _ in 0..<t {
    let n = Int(readLine()!)!
    var bottomLeftX = 1000
    var bottomLeftY = 1000
    var topRightX = -1000
    var topRightY = -1000
    for _ in 0..<n {
        let object = readLine()!
        let parameters = object.characters.split(separator: " ").map(String.init)
        let type = parameters[0]
        switch type {
        case "p":
            let x = Int(parameters[1])!
            let y = Int(parameters[2])!
            bottomLeftX = min(bottomLeftX, x)
            bottomLeftY = min(bottomLeftY, y)
            topRightX = max(topRightX, x)
            topRightY = max(topRightY, y)
        case "c":
            let x = Int(parameters[1])!
            let y = Int(parameters[2])!
            let r = Int(parameters[3])!
            bottomLeftX = min(bottomLeftX, x - r)
            bottomLeftY = min(bottomLeftY, y - r)
            topRightX = max(topRightX, x + r)
            topRightY = max(topRightY, y + r)
        case "l":
            let x1 = Int(parameters[1])!
            let y1 = Int(parameters[2])!
            let x2 = Int(parameters[3])!
            let y2 = Int(parameters[4])!
            bottomLeftX = min(bottomLeftX, x1, x2)
            bottomLeftY = min(bottomLeftY, y1, y2)
            topRightX = max(topRightX, x1, x2)
            topRightY = max(topRightY, y1, y2)
        default:
            print("error")
        }
    }
    print("\(bottomLeftX) \(bottomLeftY) \(topRightX) \(topRightY)")
}
