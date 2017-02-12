/*: (C) Gaetano Causio 2015

# Cocoa - Command Line Tool

*/

import Foundation

//: Write a string to **STDOUT**

let tot = 8
print("value = \(tot)\n        -----")

print("a","b","c","d", separator: ".")

print("first line", terminator: "")
print("...still on the first line")


//: Read a string from **STDIN**

// Get a number
var n = Int(readLine()!)!

// Get an array of strings
//var arr = readLine()!.characters.split(" ").map(String.init)

// Get input using guard
func getInput() {
    
    guard let line = readLine(), !line.isEmpty else {
        print("You must enter something. Available dumps:")
        return
    }
    
}

// Get command line parameters
let parameters = CommandLine.arguments.dropFirst()
if parameters.count == 0 {
    print("Available dumps are listed here.")
}

