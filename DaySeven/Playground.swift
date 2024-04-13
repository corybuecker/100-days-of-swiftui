import Cocoa

// https://www.hackingwithswift.com/100/swiftui/7
// https://www.hackingwithswift.com/quick-start/beginners/how-to-return-values-from-functions
func showWelcome() {
  print("Welcome to the playground")
  print("Hello, world!")
}

func printTimesTable(number: Int, end: Int) {
  for i in 1...end {
    print("\(i) x \(number) is \(i * number)")
  }
}

// printTimesTable(number: 5, end: 40)
let root = sqrt(64)
print(root)

func rollDice() -> Int {
  let number = Int.random(in: 1...6)
  return number
}

let result = rollDice()
print(result)

func getUser() -> (firstName: String, lastName: String, age: Int) {
  (firstName: "Taylor", lastName: "Swift", age: 26)
}

let user = getUser()
let firstName = user.firstName
let lastName = user.lastName

print("Name: \(firstName) \(lastName)")

func rollDice(_ sides: Int, _ count: Int) -> [Int] {
  // Start with an empty array
  var rolls = [Int]()

  // Roll as many dice as needed
  for _ in 1...count {
    // Add each result to our array
    let roll = Int.random(in: 1...sides)
    rolls.append(roll)
  }

  // Send back all the rolls
  return rolls
}

let rolls = rollDice(20, 10)

print(rolls)
