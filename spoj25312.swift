// http://www.spoj.com/problems/DRNTEAGL/
// DRNTEAGL - Duronto Eagle
// Notice: Runtime error when judging in spoj, because testcases don't comply with the input format description.

let temp = readLine()!.characters.split(separator: " ").map(String.init)
let t = Int(temp[0])!
for caseIndex in 0..<t {
    let temp = readLine()!.characters.split(separator: " ").map(String.init)
    let n = Int(temp[0])!
    var maxDistanceSqr = 0
    var maxCase = 0
    for i in 0..<n {
        let position = readLine()!.characters.split(separator:" ").map(String.init).map{Int($0)!}
        let distanceSqr = position[0] * position[0] + position[1] * position[1]
        if distanceSqr > maxDistanceSqr {
            maxDistanceSqr = distanceSqr
            maxCase = i+1
        }
    }
    print("Case \(caseIndex+1): \(maxCase)")
}