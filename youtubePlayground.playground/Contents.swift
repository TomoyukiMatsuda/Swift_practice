func divide(value: Double, m: Double, n: Double) -> (m: Double, n: Double) {
    
    let mValue = value * m / (m + n)
    let nValue = value * n / (m + n)
    return (m: mValue, n: nValue)
}

print(divide(value: 10, m: 2, n: 3))
