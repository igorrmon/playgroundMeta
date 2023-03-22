var password = "1234"
let passcode = Int(password)
print("\(passcode!)")
password = "hello world"
if let code = Int(password){
   print("pass code \(code)")
}else{
   print("Invalid passcode!")
}

let acessCode: Int
if let code = Int(password) {
    acessCode = code
}else{
    acessCode = 1111
}

print(acessCode)

let firstPassword = "hello"
let secondPassword = "world"

if let firstPass = Int(firstPassword), let secondPass = Int(secondPassword) {
    print(" \(firstPass) and \(secondPass)")
}else{
    print("Invalid passcode")
}

let firstAccessCode: Int
let secondAccessCode: Int

if let firstPasscode = Int(firstPassword),
  let secondPasscode =
    Int(secondPassword)
{
  firstAccessCode = firstPasscode
  secondAccessCode = secondPasscode
} else {
  firstAccessCode = 1111
  secondAccessCode = 2222
}


print(
  "The first passcode of the app is \(firstAccessCode) and the second passcode of the app is \(secondAccessCode)."
)
