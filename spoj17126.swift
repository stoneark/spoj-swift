// http://www.spoj.com/problems/SMPSEQ6/
// SMPSEQ6 - Fun with Sequences (Act 4)

let parameters = readLine()!.characters.split(separator:" ").map(String.init).map{Int($0)}
let n = parameters[0]!
let x = parameters[1]!
let s = readLine()!.characters.split(separator:" ").map(String.init).map{Int($0)}
let q = readLine()!.characters.split(separator:" ").map(String.init).map{Int($0)}
var result = ""
for i in 0..<n {
    for y in -x...x {
        if i+y<0 || i+y>=n {
            continue
        }
        if s[i] == q[i+y] {
            if result.characters.count > 0 {
                result.append(" ")
            }
            result.append(String(i+1))
            break
        }
    }
}
print(result)