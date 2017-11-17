// http://www.spoj.com/problems/CPTTRN6/
// CPTTRN6 - Character Patterns (Act 6)

let t = Int(readLine()!)!
for index in 0..<t {
    if index > 0 {
        print()
    }

    let testcase = readLine()!
    let parameters = testcase.characters.split(separator: " ").map(String.init)
    let l = Int(parameters[0])! + 1
    let c = Int(parameters[1])! + 1
    let h = Int(parameters[2])!
    let w = Int(parameters[3])!
    let horizonalLineUnit = String.init(repeating: "-", count: w) + "+"
    var horizonalLine = String.init(repeating: horizonalLineUnit, count: c)
    horizonalLine.remove(at: horizonalLine.characters.index(before: horizonalLine.characters.endIndex))
    let gridLineUnit = String.init(repeating: ".", count: w) + "|"
    var gridLine = String.init(repeating: gridLineUnit, count: c)
    gridLine.remove(at: gridLine.characters.index(before: gridLine.characters.endIndex))
    for i in 0..<l {
        for _ in 0..<h {
            print(gridLine)
        }
        if i < l - 1 {
            print(horizonalLine)
        }
    }
}