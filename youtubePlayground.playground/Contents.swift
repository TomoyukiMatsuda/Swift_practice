
// 構造体と型

struct Human {
    var name: String
    var age: Int
}
var h = Human(name: "Tomoyuki", age: 27)
print(h)
print(type(of: h))

var arr = [10, 20, 30, 40]
print(arr.count)

var ave = 0
for i in 0 ..< arr.count {
    ave = ave + arr[i]
}

ave = ave / arr.count
print(ave)

struct ClassRoom {
    var name:String // クラスめい
    var num:Int // 生徒数
    var teacher:Human
    var students:[Human]
    
    init(name: String, teacher: Human, students: [Human]) {
        self.name = name
        self.teacher = teacher
        self.students = students
        self.num = students.count
    }
    
    func classStudentsNameAndAge() {
        for i in 0 ..< self.students.count {
            print("生徒名：\(self.students[i].name)、　年齢\(self.students[i].age)")
        }
    }
}

var t = Human(name: "Tom", age: 40)
var s1 = Human(name: "Alice", age: 15)
var s2 = Human(name: "Bob", age: 16)
var s3 = Human(name: "Charly", age: 17)

var sArr = [s1, s2, s3]
print(type(of: sArr))

var cr = ClassRoom(name: "3-A", teacher: t, students: sArr)
print(type(of: cr))

print(cr.teacher.name)
print(cr.students[1].name)

print(cr.num)

cr.classStudentsNameAndAge()
