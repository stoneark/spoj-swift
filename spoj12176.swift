// http://www.spoj.com/problems/CPTTRN1
// Character Patterns (Act 1)

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
        for j in 0..<c {
            str.append((i+j) % 2 == 0 ? "*" : ".")
        }
        print(str)
    }
}