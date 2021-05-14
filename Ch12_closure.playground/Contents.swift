let hello = { () -> () in
    print("hello")
}

hello()

//12-2
//() -> Int がクロージャーの型。

var globalCount = 0

func maker(_ a: Int, _ b: Int) -> () -> Int {
    var localvar = a
    return { () -> Int in
        globalCount += 1
        localvar += b
        return localvar
    }
}

print(type(of: clojure1))

var clojure1 = maker(10, 1)
print(clojure1(), globalCount) // localvarが宣言してなくても使えてるみたいになってる
print(clojure1(), globalCount)
globalCount = 1000
print(clojure1(), globalCount)

var closure2 = maker(50, 2)
print(closure2(), globalCount)
print(closure2(), globalCount)
print(closure2(), globalCount)

//closureが処理に使ってる値、localvar, bがキャプチャされている。




class MyInt {
    var value = 0
    init(_ v: Int) {
        print("生成されました")
        self.value = v
    }
    deinit {
        print("解放されました")
    }
}

func makerZ(_ a: MyInt) -> () -> () {
    let localvar = a
    return { () -> () in
        localvar.value += 1
        print(localvar.value)
    }
}

var myInt: MyInt! = MyInt(10)
var closure3:(() -> ())! = makerZ(myInt)
closure3()
closure3()
closure3() // myIntインスタンスをキャプチャしているんだね。

myInt = nil // まだ開放されない
closure3 = nil // ここで解放
