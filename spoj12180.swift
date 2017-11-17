// http://www.spoj.com/problems/CPTTRN4/
// CPTTRN4 - Character Patterns (Act 4)

let t = Int(readLine()!)!
for index in 0..<t {
    if index > 0 {
        print()
    }
    let testcase = readLine()!
    let parameters = testcase.characters.split(separator:" ").map(String.init)
    let l = Int(parameters[0])!
    let c = Int(parameters[1])!
    let h = Int(parameters[2])!
    let w = Int(parameters[3])!

    let horizontalLine = String.init(repeating: "*", count: (1+w) * c + 1)
    let gridUnit = "*" + String.init(repeating: ".", count: w)
    let gridLine = String.init(repeating: gridUnit, count: c) + "*"
    for _ in 0..<l {
        print(horizontalLine)
        for _ in 0..<h {
            print(gridLine)
        }
    }
    print(horizontalLine)
}