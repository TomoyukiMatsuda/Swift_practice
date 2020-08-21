
struct Box {
    var width: Float
    var length: Float
    var height: Float
    var volume: Float
    
    init(w: Float, l: Float, h: Float) {
        self.width = w
        self.length = l
        self.height = h
        self.volume = w * l * h
    }
}

var b = Box(w: 2, l: 4, h: 2)
print(b.volume)

struct Cube {
    var l: Float
}
var c = Cube.init(l: 9.0)
print(c.l)

struct Sphere {
    var radius: Float
    var volume: Float
    var surface: Float
    
    init(r: Float) {
        self.radius = r
        self.volume = 4 / 3 * 3.141592 * r * r * r
        self.surface = 4 * 3.141592 * r * r
    }
}

var s = Sphere(r: 5)

print(s.radius, s.volume, s.surface)
