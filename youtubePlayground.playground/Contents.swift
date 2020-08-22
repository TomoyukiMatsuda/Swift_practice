// 構造体と関数まとめ１

struct Sphere {
    static let info = "これは球を扱うための構造体です。"
    
    var r:Double
    
    init(radius: Double) {
        self.r = radius
    }
    
    func getVolume() -> Double {
        let v = (4/3) * Double.pi * r * r * r
        return v
    }
    
    func getSurface() -> Double {
        let s = 4 * Double.pi * r * r
        return s
    }
}

var s = Sphere(radius: 10)
print(s.getSurface())
print(s.getVolume())



var arr = [Sphere(radius: 0.1), Sphere(radius: 0.5), Sphere(radius: 1.0), Sphere(radius: 0.02), Sphere(radius: 2.0), Sphere(radius: 3.0)]

var sumS:Double = 0

for i in 0 ..< arr.count {
    sumS = sumS + arr[i].getSurface()
}
print(sumS)

var aveV: Double = 0
let n:Double = Double(arr.count)
for i in 0 ..< arr.count {
    aveV = aveV + arr[i].getVolume()
}
aveV = aveV / n
print(aveV)

var mb = arr[0].getSurface() / arr[0].getVolume()
var num = 0

for i in 1 ..< arr.count {
    var b = arr[i].getSurface() / arr[i].getVolume()
    if mb < b {
        num = i
    }
}

print("\(arr[num].r)です")
