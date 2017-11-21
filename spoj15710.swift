// http://www.spoj.com/problems/SMPSUM/
// SMPSUM - Iterated sums

let testcase = readLine()!
let parameters = testcase.characters.split(separator: " ").map(String.init)
let a = Int(parameters[0])!
let b = Int(parameters[1])!
var result = 0
for i in a...b {
    result = result + i * i
}
print(result)