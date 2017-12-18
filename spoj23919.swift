// http://www.spoj.com/problems/CHITEST1/
// CHITEST1 - Sum of two numbers

let temp = readLine()!.characters.split(separator: " ").map(String.init)
let n = Int(temp[0])!
for _ in 0..<n {
    let parameters = readLine()!.characters.split(separator:" ").map(String.init)
    let a = Double(parameters[0])!
    let b = Double(parameters[1])!
    let sum = a+b
    if sum.truncatingRemainder(dividingBy: 1) == 0 {
        print(Int(sum))
    } else {
        print(sum)
    }
}