// エラー処理 do / catch

import Foundation

func printName(name: String) throws {
    // nameが空文字の場合にはエラーとなる
    if name.isEmpty {
        throw NSError(domain: "error", code: -1, userInfo: nil)
    }
    print(name)
}

do {
    // エラーの発生する可能性のある処理を記述
    try printName(name: "")
    print("処理成功")
} catch {
    
    print(error)
    print("エラー発生")
}


//do {
//    // エラーの発生する可能性のある処理を記述
//    try printName(name: "") // ここでdo内処理がストップして、catchに移る
//    print("処理成功")
//} catch {
//    // do内 try の処理でエラーが発生した場合の記述
//    print(error)
//    print("エラー発生")
//}
//try! printName(name: "")
