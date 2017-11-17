// http://www.spoj.com/problems/CPTTRN2
// Character Patterns (Act 2)

let t = Int(readLine()!)!
for index in 0..<t {
    if index > 0 {
        print()
    }
    let testcase = readLine()!
    let parameters = testcase.characters.split(separator: " ").map(String.init)
    let l = Int(parameters[0])!
    let c = Int(parameters[1])!

    for i in 0..<l {
        var str = ""
        if i==0 || i==l-1 {
            str = String.init(repeating: "*", count: c)
        } else {
            for j in 0..<c {
                str.append((j==0 || j==c-1) ? "*" : ".")
            }
        }
        print(str)
    }
}