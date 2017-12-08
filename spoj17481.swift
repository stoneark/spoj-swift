// http://www.spoj.com/problems/SMPSEQ7/
// SMPSEQ7 - Fun with Sequences (Act 5)

enum Direction {
    case decrasing, incrasing
}
let parameter = readLine()!.characters.split(separator: " ").map(String.init)
let n = Int(parameter[0])!
let s = readLine()!.characters.split(separator: " ").map(String.init).map{Int($0)!}
var status = Direction.decrasing
var flag = true
for i in 1..<n {
    if status == .decrasing {
        if s[i] >= s[i-1] {
            status = .incrasing
        }
    } else {
        if s[i] <= s[i-1] {
            flag = false
            break
        }
    }
}
print(flag ? "Yes" : "No")