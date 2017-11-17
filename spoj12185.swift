// http://www.spoj.com/problems/CPTTRN5/
// CPTTRN5 - Character Patterns (Act 5)

let t = Int(readLine()!)!
for index in 0..<t {
    if index > 0 {
        print()
    }

    let testcase = readLine()!
    let parameters = testcase.characters.split(separator: " ").map(String.init)
    let l = Int(parameters[0])!
    let c = Int(parameters[1])!
    let s = Int(parameters[2])!

    let horizontalLine = String.init(repeating: "*", count: (1+s) * c + 1)

    var gridLineBackslash: [String] = []
    var gridLineSlash: [String] = []
    for i in 0..<s {
        var tempBackslash = "*"
        var tempSlash = "*"
        for j in 0..<s {
            tempBackslash.append(i==j ? "\\" : ".")
            tempSlash.append(i==s-j-1 ? "/" : ".")
        }
        gridLineBackslash.append(tempBackslash)
        gridLineSlash.append(tempSlash)
    }

    for i in 0..<l {
        print(horizontalLine)
        for j in 0..<s {
            var gridLine = ""
            for k in 0..<c {
                gridLine.append((k+i) % 2 == 0 ? gridLineBackslash[j] : gridLineSlash[j])
            }
            gridLine.append("*")
            print(gridLine)
        }
    }
    print(horizontalLine)
}