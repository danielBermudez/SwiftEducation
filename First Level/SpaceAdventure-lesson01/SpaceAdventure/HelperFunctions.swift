/*
 
 This work is licensed under a Creative Commons Attribution-NonCommercial-ShareAlike
 4.0 International License, by Yong Bakos.
 
 */

import Foundation

// Wait for the user to type something in the console, and return what
// they type as a String with the trailing newline character removed.
func getln() -> String {
    let stdin = FileHandle.standardInput
    var input = String(data: stdin.availableData, encoding: .utf8)
    input = input!.trimmingCharacters(in: CharacterSet.newlines)
    return input ?? "Unable to capture user input"
}
