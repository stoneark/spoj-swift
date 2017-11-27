// http://www.spoj.com/problems/HS12HDPW/
// HS12HDPW - Hidden Password

extension UInt32 {
    func bitState(at somePlace: Int) -> Bool {
        return (self >> UInt32(somePlace)) & 0b01 == 1
    }
}

extension String {
    var asciiArray: [UInt32] {
        return unicodeScalars.filter{$0.isASCII}.map{$0.value}
    }
    
    var blue: UInt8 {
        var blueBits: UInt8 = 0
        for i in stride(from: self.asciiArray.count - 1, through: 0, by: -1) {
            blueBits = blueBits << 1 + (self.asciiArray[i].bitState(at: i) ? 1 : 0)
        }
        return blueBits
    }
    
    var green: UInt8 {
        var greenBits: UInt8 = 0
        for i in stride(from: self.asciiArray.count - 1, through: 0, by: -1) {
            greenBits = greenBits << 1 + (self.asciiArray[i].bitState(at: i-3 >= 0 ? i-3 : i+3) ? 1 : 0)
        }
        return greenBits
    }
    
    func char(at somePlace: Int) -> Character {
        return self[self.index(self.startIndex, offsetBy: somePlace)]
    }
}

let t = Int(readLine()!)!
for index in 0..<t {
    if index > 0 {
        _ = readLine()
    }
    let n = Int(readLine()!)!
    let testcase = readLine()!
    let passbook = readLine()!
    let tuples = testcase.characters.split(separator: " ").map(String.init)
    var decoded = ""
    for i in 0..<n {
        let item = tuples[i]
        decoded.append(passbook.char(at: Int(item.blue)))
        decoded.append(passbook.char(at: Int(item.green)))
    }
    print(decoded)
}