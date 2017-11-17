var temp = readLine()
while temp != "42" {
    if let unwrapped = temp {
        print(unwrapped)
    }
    temp = readLine()
}
