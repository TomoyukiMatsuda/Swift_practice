// クロージャーの学習

let draemon = { (Person: String) in
    
    print("ドラえもんと \(Person)")
}
 
draemon("のびた")


let human = { (Hito: String) -> String in
    
    return "私は \(Hito)です"
}

print(human("人"))
