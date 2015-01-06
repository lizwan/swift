func outer(outerParam: Int) {
    var tmp = 3
    
    func inner() {
        tmp += outerParam
    }
    
    inner()
    
    println(tmp)
}

outer(7)

/*

- Closure : functional programming language
- java8의 Lambda, C#의 Delegate

*/