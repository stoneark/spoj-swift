// http://www.spoj.com/problems/SMPCPH1/
// SMPCPH1 - Substitution cipher

let n = Int(readLine()!)!
let s = readLine()!
var dict = [Character: Character]()
for i in 0..<n-1 {
    let indexKey = s.index(s.startIndex, offsetBy: i)
    let indexValue = s.index(indexKey, offsetBy: 1)
    dict[s.characters[indexKey]] = s.characters[indexValue]
}
dict[s.characters[s.index(before: s.endIndex)]] = s.characters[s.startIndex]

let m = Int(readLine()!)!
for _ in 0..<m {
    let plaintext = readLine()!
    var result = ""
    for char in plaintext.characters {
        if let encoded = dict[char] {
            result.append(encoded)
        } else {
            result.append(char)
        }
    }
    print(result)
}