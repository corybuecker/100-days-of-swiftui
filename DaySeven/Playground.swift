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

printTimesTable(number: 5, end: 40)
