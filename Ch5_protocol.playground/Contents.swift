protocol Human {
    var name: String? { get } //読み出し専門
    var job: String? { set get }  //読み書き可能
}

struct kid: Human {
    var name: String?
    var job: String? = "gakusei"
}

protocol Macho: Human {
    var kinnikuryou: Int? { get set }
}

struct hagesebun: Macho {
    var kinnikuryou: Int?
    var name: String?
    var job: String?
    
    init() {
        name = "haga"
        job = "bodybuilder"
    }
    
}

protocol vector {
    associatedtype Element //vectorとelement型は密接な関係にありますよ！
    var x: Element? { get set }
    var y: Element { get set }
}

class vector_kids: vector {
    
    typealias Element = Int
    
    var x: Int?
    
    var y: Int = 0 //オプショナルじゃないやつは初期値打ち込まないといけない

}

let text = "hogehoge"
//print(text.prefix(4))
//print(text.isEmpty)
//print(text.indices)
print(text.reversed())


if true, false {
    // hoge
} else {
    print("true, falseはfalseになります")
}
