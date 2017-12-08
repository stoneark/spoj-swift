// http://www.spoj.com/problems/BSCXOR/
// BSCXOR - XOR

let parameters = readLine()!.characters.split(separator: " ").map(String.init).map{Int($0)!}
let p = parameters[0]
let q = parameters[1]
print(p^q)