// http://www.spoj.com/problems/PCROSS2/
// PCROSS2 - Cross Pattern (Act 2)

let t = Int(readLine()!)!
for index in 0..<t {
    if index > 0 {
        print()
    }

    let parameters = readLine()!.characters.split(separator: " ").map(String.init).map{Int($0)!}
    let m = parameters[0]
    let n = parameters[1]
    let ci = parameters[2] - 1
    let cj = parameters[3] - 1

    for row in 0..<m {
        var strLine = ""
        for col in 0..<n {
            let asteriskColLeft = cj - abs(ci - row)
            let asteriskColRight = cj + abs(ci - row)
            strLine.append((col == asteriskColLeft || col == asteriskColRight) ? "*" : ".")
        }
        print(strLine)
    }
}