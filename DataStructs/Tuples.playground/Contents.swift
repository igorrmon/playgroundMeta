let credential = ("", -1111)

if credential.0 == "" || credential.1 < 0 {
    print("Invalid credentials")
} else {
    print("The username is \(credential.0) and the passcode is \(credential.1)")
}

let fullCredentials = (password: "pass", passcode: 1111)

if(fullCredentials.password == "" || fullCredentials.passcode <= 0) {
    print("Invalid credentials")
} else {
    print("The username is \(fullCredentials.password) and the passcode is \(fullCredentials.passcode)")
}
