// http://www.spoj.com/problems/SMPSEQ5/
// SMPSEQ5 - Fun with Sequences (Act 3)

let n = Int(readLine()!)!
let strs = readLine()!
let s = strs.characters.split(separator: " ").map(String.init).map{$0}
let m = Int(readLine()!)!
let strq = readLine()!
let q = strq.characters.split(separator: " ").map(String.init).map{$0}
var result = ""
for i in 0..<min(n,m) {
    if s[i] == q[i] {
        if result.characters.count > 0 {
            result.append(" ")
        }
        result.append(String(i+1))
    }
}
print(result)