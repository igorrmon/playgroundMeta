var aClosure = {
    () -> () in
    print("this is a closure")
}

aClosure()

var argumentClosure = {(str: String) -> Void in print("Hello \(str)")}

argumentClosure("Bertram")


var maximun = {
    (num1: Int, num2: Int) -> Int in
    return num1 > num2 ? num1 : num2
}

maximun(1,2)


let letters = ["H" , "E" , "X" , "A"]
let myCollection = letters.sorted(by: { (string1: String, string2: String) -> Bool in return string1 < string2 } )
let sugarCollection = letters.sorted(by: {$0 < $1})
print(sugarCollection)
// returns ["A" , "E" , "H" , "X"]
