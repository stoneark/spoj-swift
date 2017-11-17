// http://www.spoj.com/problems/TEST/
// TEST - Life, the Universe, and Everything

var temp = readLine()
while temp != "42" {
    if let unwrapped = temp {
        print(unwrapped)
    }
    temp = readLine()
}
