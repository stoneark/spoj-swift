// http://www.spoj.com/problems/STRHH
// Half of the half 

let t = Int(readLine()!)!
for _ in 0..<t {
    let str = readLine()!
    var strResult = ""
    for i in stride(from: 0, to: str.characters.count / 2, by: 2) {
        let index = str.index(str.startIndex, offsetBy: i)
        strResult.append(str[index])
    }
    print(strResult)
}