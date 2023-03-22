let day = "Monday"
print("Today is \(day)")
let hour = "6"
let minutes = "15"
let period = "PM"

var time = hour + ":" + minutes + " " + period
print("it is \(time)")
print("it is \(time) on \(day)")
let timezone = "PST"

time += " \(timezone)"

print("it is \(time) on \(day)")

let shortDay = day.prefix(3)

print("Today is \(shortDay)")
print("it is \(time) on \(shortDay)")

let numberPlate = "WW87GP"
for character in numberPlate {
  print("character is = \(character)")
}
