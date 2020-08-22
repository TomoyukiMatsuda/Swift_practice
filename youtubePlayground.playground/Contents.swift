// 構造体とメソッド
struct Student {
    var name: String
    var age: Int
    var points:[Int]
    
    // 平均点計算メソッド
    func ave() -> Float {
        var sume = 0
        for i in 0...2 {
            sume = sume + points[i]
        }
        
        return Float(sume) / 3 // float(sum) でsumをfloat型として扱っている
    }
    
    func printInfo() -> Void { // return 返り値がない時はVoid
        let ave = self.ave()
        let phrase = "氏名は\(name)です。\n試験の平均点は\(ave)です。"
        
        print(phrase)
    }
}

var s = Student(name: "松田", age: 30, points: [92, 90, 31])
s.printInfo()

// 確認問題
struct Algebra {
    var a: Float
    var b: Float
    
    init(a: Float, b: Float) {
        self.a = a
        self.b = b
    }
    
    func sum() -> Float {
        return a + b
    }
    
    func diff() -> Float {
        return a - b
    }
    
    func times() -> Float {
        return a * b
    }
    
    func div() -> Float {
        return a / b
    }
}

let al = Algebra(a: 2.5, b: 2.0)
print(al.a, al.b)
print(al.sum(), al.diff(), al.times(), al.div())


