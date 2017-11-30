// http://www.spoj.com/problems/SMPSEQ3/
// SMPSEQ3 - Fun with Sequences

let n = Int(readLine()!)!
let strs = readLine()!
let s = strs.characters.split(separator:" ").map(String.init).map{Int($0)!}
let m = Int(readLine()!)!
let strq = readLine()!
let q = strq.characters.split(separator:" ").map(String.init).map{Int($0)!}
var status = Array.init(repeating: false, count: 201)
let offset = 100
for i in 0..<n {
    status[s[i] + offset] = true
}
for i in 0..<m {
    status[q[i] + offset] = false
}
var result = ""
for i in 0..<status.count {
    if status[i] {
        if result.characters.count > 0 {
            result.append(" ")
        }
        result.append(String(i - offset))
    }
}
print(result)