// http://www.spoj.com/problems/CPTTRN3/
// Character Patterns (Act 3)

let t = Int(readLine()!)!
for index in 0..<t {
    if index > 0 {
        print()
    }
    let testcase = readLine()!
    let parameters = testcase.characters.split(separator: " ").map(String.init)
    let l = Int(parameters[0])!
    let c = Int(parameters[1])!

    let horizontalLine = String.init(repeating: "*", count: 3*c+1)
    let gridLine = String.init(repeating: "*..", count: c) + "*"
    for _ in 0..<l {
        print(horizontalLine)
        print(gridLine)
        print(gridLine)
    }
    print(horizontalLine)
}