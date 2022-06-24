//
//  main.swift
//  Homework_15_initalization_inheritance
//
//  Created by Nor Gh on 24.06.22.
//1. Ստեղծել struct Point անունով որը պետք է ունենա 2 init `
//- պետք է սկզբնական արժեքներ տա x, y։ Օրինակ Point(x: 5, y: -8) -> x = 5, y = -8
//- պետք է միայն դրական սկզբնական արժեքներ տա   x, y-ին: Օրինակ Point(x: -5, y: -8) -> x = 5, y = 8
//
//2. Ստեղծել struct Rect (հետևյալ փրոփրտիներով origin: Point, weight: Double, height: Double ) անունով որը պետք է ունենա հետևյալ init-ները`
//- init(origin: Point, weight: Double, height: Double)
//- init(center: Point, weight: Double, height: Double)
//- init(weight: Double, height: Double) -> Point.x = 0 Point.y = 0

import Foundation

struct Point {
    var x:Double
    var y:Double
    
    init(_x:Double,y:Double){
        self.x = _x
        self.y = y
    }
    init(){
        self.x = 0
        self.y = 0
    }
    init(x:Double,y:Double){
        self.x = abs(x)
        self.y = abs(y)
    }
}

struct Rect {
    var origin:Point
    var weight:Double
    var height:Double
    
    init(origin:Point, weight:Double, height:Double){
        self.origin = Point(_x: 0, y: 0)
        self.height = height
        self.weight = weight
    }
    
    init(center:Point, weight:Double, height:Double){
        self.init(origin: Point(_x: 0, y: 0), weight: 0, height: 0)
        self.weight = weight
        self.height = height
    }
    
    init(weight:Double, height:Double){
        self.init(origin: Point(x: 0, y: 0), weight: weight, height: height)
        self.weight = weight
        self.height = height
    }
}


let a1 = Rect(origin: Point(x: 0, y: 0), weight: 0, height: 0)
let a2 = Rect(center: Point(x: 0.1, y: 0.2), weight: 0, height: 0)
let a = Rect(weight: 10, height: 10)
//print("Hight is \(a.weight), weight is \(a.weight) here is \(a.origin)")
print("Hight is \(a1.weight), weight is \(a1.weight) here is \(a1.origin)")
print("Hight is \(a2.weight), weight is \(a2.weight) here is \(a2.origin)")

//3. Ստեղծել struct Color (հետևյալ փրոփրտիներով red, green, blue)
//- init(red: Double, green: Double, blue: Double)                        //
//- init(red: Double)
//- init(green: Double)
//- init(blue: Double)

struct Color {
    var red:Double
    var green:Double
    var blue:Double
    
    init(red: Double, green: Double, blue: Double){
        self.red = red
        self.blue = blue
        self.green = green
    }
    
    init(red: Double){
        self.init(red: red, green: 0, blue: 0)
    }
    init(green: Double){
        self.init(red: 0, green: green, blue: 0)
    }
    init(blue: Double){
        self.init(red: 0, green: 0, blue: blue)
    }
}

let blue = Color(blue: 34)
print(blue)
let green = Color(green: 4)
print(green)
let red = Color(red: 3)
print(red)
let myColors = Color(red: 0, green: 0, blue: 0)

//4. Ստեղծել Class Car անունով (հետևյալ փրոփրտիներով name, model,speed, isAutomatic)  որը պետք է ունենա հետևյալ init-ները`
//- init(name: String, model: String, speed: String, isAutomatic: Bool)
//- init(name: String, model: String, speed: String)
//- init(name: String, model: String)
//- init(name: String)
//- init()

class Car {
    var name:String
    var model:String
    var speed:String
    var isAutomatic:Bool

    init(name: String, model: String, speed: String, isAutomatic: Bool) {
        self.name = name
        self.speed = speed
        self.model = model
        self.isAutomatic = isAutomatic
    }
   convenience init(name: String, model: String, speed: String) {
       self.init(name: name, model: model, speed: speed, isAutomatic: false)
    }
   convenience init(name: String, model: String) {
       self.init(name: name, model: model, speed: String())
    }
   convenience init(name: String) {
       self.init(name: name, model: String())
    }
    init(){
        self.name = String()
        self.speed = String()
        self.model = String()
        self.isAutomatic = Bool()
    }
}

let exemp = Car(name: "", model: "", speed: "", isAutomatic: true)
let exemp1 = Car(name: "", model: "", speed: "")
let exemp2 = Car(name: "", model: "")
let exemp3 = Car(name: "")
let examp4 = Car()

//print(exemp.isAutomatic)


//5. Ստեղծել Class View անունով (հետևյալ փրոփրտիներով frame: Rect, backgroundColor: Color, tag: Int)
//որը պետք է ունենա հետևյալ init-ները`
//- init(frame: Rect, backgroundColor: Color, tag: Int)
//- init(frame: Rect, backgroundColor: Color)
//- init(frame: Rect)
//- init()


class View {
    var frame:Rect
    var backgroundColor:Color
    var tag:Int
    
    init(frame: Rect, backgroundColor: Color, tag: Int) {
        self.tag = tag
        self.backgroundColor = backgroundColor
        self.frame = frame
    }
   convenience init(frame: Rect, backgroundColor: Color) {
       self.init(frame: frame, backgroundColor: Color(red: 0, green: 0, blue: 0), tag: Int())
    }
    convenience init(frame: Rect) {
        self.init(frame: Rect(weight: 0, height: 0), backgroundColor: Color(red: 0, green: 0, blue: 0))
    }
    init(){
        self.tag = Int()
        self.backgroundColor = Color(red: 0, green: 0, blue: 0)
        self.frame = Rect(origin: Point(_x: 0, y: 0), weight: 0, height: 0)
    }
}

let o = View()
let o1 = View(frame: Rect(origin: Point(_x: 0, y: 0), weight: 0, height: 0))
let o2 = View(frame: Rect(origin: Point(_x: 0, y: 0), weight: 0, height: 0), backgroundColor: Color(red: 0, green: 0, blue: 0))
let o3 = View(frame: Rect(origin: Point(_x: 0, y: 0), weight: 0, height: 0), backgroundColor: Color(red: 0, green: 0, blue: 0), tag: 0)

//6. Ստեղծել Class Button որը կժառանգվի View -ից (հետևյալ փրոփրտիներով titleName: String, isSelected: Bool) որը պետք է ունենա հետևյալ init-ները`
//- init(frame: Rect, titleName: String, isSelected: Bool)
//- init(frame: Rect, titleName: String)


class Button : View {
    var titleName:String
    var isSelected:Bool
    
    init(frame: Rect, titleName: String, isSelected: Bool) {
        self.titleName = titleName
        self.isSelected = isSelected
        super.init(frame: frame, backgroundColor: Color(red: 0, green: 0, blue: 0), tag: 0)
    }
    convenience override init() {
        self.init(frame: Rect(center: Point(_x: 0, y: 0), weight: 0, height: 0), titleName: "Buttun title name", isSelected: true)
    }
}
