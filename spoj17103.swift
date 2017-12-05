// http://www.spoj.com/problems/SMPSEQ4/
// SMPSEQ4 - Fun with Sequences (Act 2)

let n = Int(readLine()!)!
let strs = readLine()!
let s = strs.characters.split(separator:" ").map(String.init).map{Int($0)!}
let m = Int(readLine()!)!
let strq = readLine()!
let q = strq.characters.split(separator:" ").map(String.init).map{Int($0)!}
var status = Array.init(repeating: 0, count: 201)
let offset = 100
for i in 0..<n {
    status[s[i] + offset] = status[s[i] + offset] + 1
}
for i in 0..<m {
    status[q[i] + offset] = status[q[i] + offset] + 1
}
var result = ""
for i in 0..<status.count {
    if status[i] == 2 {
        if result.characters.count > 0 {
            result.append(" ")
        }
        result.append(String(i - offset))
    }
}
print(result)