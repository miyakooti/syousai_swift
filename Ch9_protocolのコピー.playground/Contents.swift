struct Human {
    var name: String?
    func changeName(){
        self.name = "名無しの権兵衛"
    }
}

var human1 = Human()
human1.name = "あああ"
print(human1.name)
