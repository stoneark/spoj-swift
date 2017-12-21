// http://www.spoj.com/problems/SERI07/
// SERI07 - Strange But Easy

let t = Int(readLine()!)!
var primeTable = [2,3,5,7,11,13]
var resultTable = [11,90]

func isPrime(_ number: Int) -> Bool {
    for i in 2..<number {
        if number % i == 0 {
            return false
        }
    }
    return true
}

func generateTable(to index:Int) {
    if resultTable.count >= index {
        return
    }
    while primeTable.count < 3 * index {
        var number = primeTable.last! + 1
        while (!isPrime(number)) {
            number = number + 1
        }
        primeTable.append(number)
    }
    let lowerBoundary = resultTable.count
    for i in lowerBoundary..<index {
        resultTable.append((primeTable[3*i] * primeTable[3*i+1] + primeTable[3*i+2]))
    }
}

for _ in 0..<t {
    let n = Int(readLine()!)!
    if resultTable.count < n {
        generateTable(to: n)
    }
    var result = ""
    for i in 0..<n {
        result.append(String(resultTable[i]))
        if i<n-1 {
            result.append(" ")
        }
    }
    print(result)
}