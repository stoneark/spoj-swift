// http://www.spoj.com/problems/CPTTRN8/
// CPTTRN8 - Character Patterns (Act 8)

let t = Int(readLine()!)!
for index in 0..<t {
    if index > 0 {
        print()
    }

    let testcase = readLine()!
    let parameters = testcase.characters.split(separator: " ").map(String.init)
    let r = Int(parameters[0])!
    let c = Int(parameters[1])!
    let s = Int(parameters[2])!

    // generate diamond matrix
    var diamond: [[Character]] = []
    for i in 0..<s {
        var temp: [Character] = []
        for j in 0..<s {
            if i+j == s-1 {
                temp.append("/")
            } else if i+j < s-1 {
                temp.append(".")
            } else {
                temp.append("*")
            }
        }
        for j in 0..<s {
            if i==j {
                temp.append("\\")
            } else if i<j {
                temp.append(".")
            } else {
                temp.append("*")
            }
        }
        diamond.append(temp)
    }
    for i in 0..<s {
        var temp: [Character] = []
        for j in 0..<s {
            if i==j {
                temp.append("\\")
            } else if i<j {
                temp.append("*")
            } else {
                temp.append(".")
            }
        }
        for j in 0..<s {
            if i+j == s-1 {
                temp.append("/")
            } else if i+j < s-1 {
                temp.append("*")
            } else {
                temp.append(".")
            }
        }
        diamond.append(temp)
    }

    // generate grid matrix
    var grid: [[Character]] = []
    for _ in 0..<r {
        for j in 0..<s*2 {
            var temp: [Character] = []
            for _ in 0..<c {
                for k in 0..<s*2 {
                    temp.append(diamond[j][k])
                }
            }
            grid.append(temp)
        }
    }

    // print grid matrix
    for i in 0..<grid.count {
        let gridLine = grid[i]
        var temp = ""
        for j in 0..<gridLine.count {
            temp.append(gridLine[j])
        }
        print(temp)
    }
}