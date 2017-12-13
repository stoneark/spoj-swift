// http://www.spoj.com/problems/SMPSEQ8/
// SMPSEQ8 - Fun with Sequences (Act 6)

var temp = readLine()!.characters.split(separator:" ").map(String.init)
let n = Int(temp[0])!
let strS = readLine()!
let s = strS.characters.split(separator: " ").map(String.init).map{Int($0)!}
temp = readLine()!.characters.split(separator:" ").map(String.init)
let m = Int(temp[0])!
let strQ = readLine()!
let q = strQ.characters.split(separator: " ").map(String.init).map{Int($0)!}
var sumS = 0
var sumQ = 0
for i in 0..<n {
    sumS += s[i]
}
for i in 0..<m {
    sumQ += q[i]
}
if sumS > sumQ {
    print(strS)
} else {
    print(strQ)
}