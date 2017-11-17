// http://www.spoj.com/problems/SMPDIV/
// SMPDIV - Divisibility

let t = Int(readLine()!)!
for _ in 0..<t {
    let testcase = readLine()!
    let parameters = testcase.characters.split(separator:" ").map(String.init)
    let n = Int(parameters[0])!
    let x = Int(parameters[1])!
    let y = Int(parameters[2])!
    var result = ""
    for a in 2..<n {
        if (a % x == 0) && (a % y != 0) {
            if result.characters.count > 0 {
                result.append(" ")
            }
            result.append(String(a))
        }
    }
    print(result)
}