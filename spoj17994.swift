// http://www.spoj.com/problems/PCROSS1/
// PCROSS1 - Cross Pattern (Act 1)

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
            strLine.append((row == ci || col == cj) ? "*" : ".")
        }
        print(strLine)
    }
}