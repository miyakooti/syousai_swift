
import UIKit

let name:String?

name = "kousuke"

if let myName = name {
    print("nameに値が格納されています。")
    print("ちなみに値は\(myName)です")
} else {
    print("nilです")
}

if let num = UserDefaults.standard.object(forKey: "hoge") {
    print("integerにするとnilではなく0が帰る、、")
    print(num)
} else {
    print("hogeには値がありません")
}

//　失敗のあるイニシャライザ
struct Human {
    
    var name: String!
    
    init?(_ name: String) {
        print("失敗のあるイニシャライザが呼ばれました。")
        guard name.count < 5 else { return nil }
        self.name = name
    }
    
//    オーバーロードしてないイニシャライザは、失敗があろうがなかろうが共存できない。
//    init(_ name: String) {
//        print("通常のイニシャライザが呼ばれました。")
//        self.name = name
//    }
    
}


let human = Human("jiburarutaru")
print(human) //nil

