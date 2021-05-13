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
