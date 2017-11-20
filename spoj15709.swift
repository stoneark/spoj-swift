// http://www.spoj.com/problems/SMPCIRC/
// SMPCIRC - Two Circles

let t = Int(readLine()!)!
for _ in 0..<t {
    let testcase = readLine()!
    let parameters = testcase.characters.split(separator: " ").map(String.init)
    let x0 = Float(parameters[0])!
    let y0 = Float(parameters[1])!
    let r0 = Float(parameters[2])!
    let x1 = Float(parameters[3])!
    let y1 = Float(parameters[4])!
    let r1 = Float(parameters[5])!
    let dSqr = (x0-x1) * (x0-x1) + (y0-y1) * (y0-y1)
    let d = dSqr.squareRoot()
    if d < abs(r0 - r1) {
        print("I")
    } else if d == abs(r0 - r1) {
        print("E")
    } else {
        print("O")
    }
}