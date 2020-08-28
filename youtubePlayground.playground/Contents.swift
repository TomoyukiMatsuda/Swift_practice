// クロージャーの学習、@escaping属性

var queue = [() -> Void]()

func enqueue(operation: @escaping () -> Void) {
    queue.append(operation)
}

enqueue {
    print("executed")
}
enqueue {
    print("executed")
}

queue.forEach { $0() }
print(queue)


func executeTwice(operation: () -> Void) {
    operation()
    operation()
}

executeTwice {
    print("実行実行")
    print("実行")
}
