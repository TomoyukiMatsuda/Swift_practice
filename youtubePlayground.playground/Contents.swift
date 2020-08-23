// 三項演算子

var a = 100
var b = 100

var winner = "勝者は"

winner += a > b ? "Aさんです" : "Bさんです"

print(winner)

winner = a > b ? "勝者はAさんです" : a < b ? "勝者はBさんです" : "引き分けです"

print(winner)
