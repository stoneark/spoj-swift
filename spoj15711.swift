// http://www.spoj.com/problems/SMPWOW/
// SMPWOW - Wow

let x = Int(readLine()!)!
var result = "W"
result.append(String(repeating:"o", count: x))
result.append("w")
print(result)