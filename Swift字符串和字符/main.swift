//
//  main.swift
//  Swift字符串和字符
//
//  Created by 徐继垚 on 15/8/26.
//  Copyright (c) 2015年 徐继垚. All rights reserved.
//

import Foundation

//println("Hello, World!")

let someString = "字符串字面量"
println(someString)


var emptyString = ""
var emptyString2 = String()
var emptyString3 : String?

emptyString3 = ""

if emptyString3!.isEmpty {
    
    println("empty")
}

var variableString = "Horse"
variableString += " and carriage"
println(variableString)

let constantString = "my name is"
//constantString += " xujiyao"




let catCharacters: [Character] = ["C", "a", "t", "!", "🐱"]
let catString = String(catCharacters)
println(catString)


let string1 = "hello"
let string2 = " xujiyao"

var welcome = string1 + string2

println(welcome)

var instruction = "look over"
instruction += string2
println(instruction)


let exclamationMark :Character = "!"

welcome.append(exclamationMark)

println(welcome)


let multiplier = 3
let message = "\(multiplier) times 2.5 is \(Double(multiplier) * 2.5)"
println(message)


let dollarSign = "\u{24}"             // $, Unicode 标量 U+0024
let blackHeart = "\u{2665}"           // ♥, Unicode 标量 U+2665
let sparklingHeart = "\u{1F496}"      // 💖, Unicode 标量 U+1F496

println(sparklingHeart)

let nametest: String = "xujiao , adas ,asdas ,sadasd"

nametest[nametest.startIndex]

nametest[nametest.endIndex.predecessor()]

nametest[nametest.startIndex.successor()]

let index = advance(nametest.startIndex, 5)

println(nametest[index])


var insert = "hello"
insert.insert("!", atIndex: insert.endIndex)

insert.splice("three", atIndex: insert.endIndex.predecessor())

println(insert)

let range = advance(insert.endIndex, -6)..<insert.endIndex
insert.removeRange(range)

println(insert)


let quotation = "Leave me alone !"
let somequotation = "Leave me alone !"

if quotation == somequotation{

    println("我们都一样")
    
}


let romeoAndJuliet = [
    "Act 1 Scene 1: Verona, A public place",
    "Act 1 Scene 2: Capulet's mansion",
    "Act 1 Scene 3: A room in Capulet's mansion",
    "Act 1 Scene 4: A street outside Capulet's mansion",
    "Act 1 Scene 5: The Great Hall in Capulet's mansion",
    "Act 2 Scene 1: Outside Capulet's mansion",
    "Act 2 Scene 2: Capulet's orchard",
    "Act 2 Scene 3: Outside Friar Lawrence's cell",
    "Act 2 Scene 4: A street in Verona",
    "Act 2 Scene 5: Capulet's mansion",
    "Act 2 Scene 6: Friar Lawrence's cell"
]


var indexa = 0
for scene in romeoAndJuliet {
    
    if scene.hasPrefix("Act 1 "){
        
        ++indexa
    }
    
    
}
println(indexa)

var mansionCount = 0
var cellCount = 0
for scene in romeoAndJuliet {
    if scene.hasSuffix("Capulet's mansion") {
        ++mansionCount
    } else if scene.hasSuffix("Friar Lawrence's cell") {
        ++cellCount
    }
}
print("\(mansionCount) mansion scenes; \(cellCount) cell scenes")















