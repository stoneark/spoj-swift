// http://www.spoj.com/problems/CHI_BINARY/
// CHI_BINARY - Binary numbers
import Foundation

enum OperatorType: UInt {
    case greaterThan, addition, subtraction, multiplication, division
}
var temp = readLine()!
let t = strtoul(temp, nil, 2)
for _ in 0..<t {
    temp = readLine()!
    let parameters = temp.characters.split(separator: " ").map(String.init)
    let oper = OperatorType.init(rawValue: strtoul(parameters[0], nil, 2))!
    var a = strtoul(parameters[1], nil, 2)
    let b = strtoul(parameters[2], nil, 2)
    switch oper {
        case .greaterThan:
            print(a>b ? "1" : "0")
        case .addition:
            print(String(a+b, radix:2))
        case .subtraction:
            if a<b {
                let bBinaryString = String(b, radix:2)
                let increasement = UInt(1)<<UInt(bBinaryString.characters.count)
                a = a + increasement
            }
            print(String(a-b, radix:2))
        case .multiplication:
            print(String(a*b, radix:2))
        case .division:
            print(String(a/b, radix:2) + " " + String(a%b, radix: 2))
    }
}