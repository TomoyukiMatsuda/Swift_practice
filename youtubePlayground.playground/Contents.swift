// オプショナル


struct User {
    
    var name: String
    var birthday: String
    var address:String
    var phoneNum: String?
    var mobilePhoneNum: String?
    
    func getInfo() -> String{
        var phrase: String
        phrase = "氏名: \(self.name)\n"
        phrase += "生年月日: \(self.birthday)\n"
        phrase += "住所: \(self.address)\n"
        phrase += "電話番号: \(self.phoneNum ?? "なし")\n"
        phrase += "携帯電話番号: \(self.mobilePhoneNum ?? "なし")"
        
        return phrase
    }
}

var user = User(name: "松田", birthday: "1992-11-24", address: "杉並区だよ")

print(user.getInfo())


let Num = 1000
var n = Num
var times = 0

while n % 2 == 0 {
    times += 1
    n /= 2
    print(n)
}

print(times)

var j = 5

repeat {
    print(j)
    j += 1
} while j < 10
