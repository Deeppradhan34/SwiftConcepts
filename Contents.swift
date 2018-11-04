//: Playground - noun: a place where people can play

import UIKit

var str = "Hello, playground"

//: Playground - noun: a place where people can play

import UIKit


//class Example {
//    var variable: Int = 0
//    func method1(value: Int) {
//        variable = value
//        print(variable)
//    }
//}
//let a = Example()
//a.method1(value: 2)

// Protocol Understanding.
//protocol Weapon {
//    var name: String { get }
//   // var canFire: Bool { get }
//   // var canCut: Bool { get }
//}
//
//protocol Fireable {
//    var size: Int { get }
//}
//
//protocol Cuttable {
//    var weight: Double { get }
//    var steel: String { get }
//}
//
//struct Sword: Weapon, Cuttable{
//    var name: String
//   // var canFire: Bool = false
//  //  var canCut: Bool = true
//    var weight: Double = 5.4
//    var steel: String
//}
//
//struct Gun: Weapon, Fireable {
//    var name: String
//    //var canCut: Bool = false
//  //  var  canFire: Bool = true
//    var size: Int
//}
//
//extension Weapon {
//    var canFire: Bool { return self is Fireable }
//    var canCut: Bool { return self is Cuttable }
//}
//
//let sword = Sword(name: "check",
//                  weight: 8.9,
//                  steel: "sdsd")
//print(sword.name)
//print(sword.canCut)
//print(sword.canFire)
//
//let gun = Gun(name: "gunb", size: 6)
//print(gun.size)
//print(gun.canCut)
//print(gun.canFire)
//

//accept parameers in closure

let driving = { (place: String) in
    print("driving to \(place)")
}

driving("Bangalore")

//Accept this closure and return nothing.
func travel (action: (String) -> Void) {
    print("Hi")
    action("check")
    print("lets")
}

travel { (place: String) in
    print("bro \(place)")
}


//accept closure and returns string.

//func travel (action: (String) -> String) {
//    print("Hi")
//    let desc = action("London")
//    print(desc)
//  //  print("lets meet")
//}
//
//travel {
//     ("Lets meet this place\($0)")
//}


//Closure with multiple parameters.
//func travel (action: (String, Int) -> String) {
////    print("Lets check your code")
//    let desc = action("Deep", 6)
//    print(desc)
//}
//
//travel {(name: String, age: Int) in
//     return "Lets check your code knowledge \(name) \(age)"
//}

//Return closure from function.
//func travel() -> (String) -> Void {
//    return  {
//        print ("I am learning \($0)")
//
//    }
//}
//
//let result = travel()
//result("a lot")


//capturing values in closure.
//func checkkn(amount: Int) -> () -> Int {
//    var am1: Int = 0
// //   print(amount)
//   // print(am1)
//    func check1() -> Int {
//        am1 = amount + am1
//        print(am1)
//        return am1
//    }
//    return check1
//}
//let a = checkkn(amount: 30)
//let b = checkkn(amount: 50)
//a()
//b()


 //Learning @escaping
//var completionHandlers: [() -> Void] = []
//func someFunctionWithEscapingClosure(completionHandler: @escaping () -> Void) {
//    print("called first")
//    completionHandlers.append(completionHandler)
//}//let x: Int = 10
////someFuncWithEcapingClosure(completionHandler: self.x)
//
//func someFunctionWithNonescapingClosure(closure: () -> Void) {
//    print("called second")
//    closure()
//}
//
//class SomeClass {
//    var x = 10
//    func doSomething() {
//        someFunctionWithEscapingClosure { self.x = 100 }
//        someFunctionWithNonescapingClosure { x = 200 }
//    }
//}
//
//let instance = SomeClass()
//instance.doSomething()
//print(instance.x)
//
//completionHandlers.first?()
//print(instance.x)
 //Prints "100"



//Property Observers

//struct P {
//    var a: String
//    var b: Int {
//        didSet {
//                print("\(a) is now \(b)% complete")
//        }
//    }
//}
//
//var a = P(a: "Hi", b: 10)
//a.b = 90
//a.b = 100


//struct Person {
//    var name: Int = 0
//
//   mutating func check() {
//        name = 20
//        print(name)
//    }
//}
//var p = Person(name: 10)
//p.check()


//struct User {
//    var username: String
//
//    init(username1: String) {
//        username = username1
//        print("Creating a new user \(username)!")
//    }
//}
//
//var user = User(username1: "de")
//print(user.username)



//difference between normal variables and static

//struct Student {
//    var size: Int = 0
//    var name: String = "sds"
//    init(name: String) {
//        self.size += 1
//        self.name = name
//    }
//}
//
//var a = Student(name: "Deep")
//print(a.name)
//print(a.size)
//
//var b = Student(name: "Deep")
//print(b.name)
//print(b.size)

//struct Student {
//   static var size: Int = 0
//     var name: String = "sds"
//    init(name: String) {
//        Student.size += 1
//        self.name = name
//    }
//}
//
//var a = Student(name: "Deep")
////print(a.name)
//print(Student.size)
//
//var b = Student(name: "Deep")
//print(Student.size)
////print(b.size)
//
//var c = Student(name: "Deep")
//print(Student.size)

//struct Person {
//     var id: String
//
//    init(id: String) {
//        self.id = id
//    }
//
//    func identify() -> String {
//        return "My social security number is \(id)"
//    }
//}
// var v = Person(id: "sdsd")
//let b = v.identify()
//print(b)


//Class Inheritance
//class Fish {
//    var name : String
//    var weight: Int
//    func check() {
//        print("In class Fish")
//    }
//    init (name: String, weight: Int) {
//        self.name = name
//        self.weight = weight
//    }
//}
//
//class goldenFish: Fish {
//    var  color: String
//    init(color1: String, name: String) {
//       color = color1
//       super.init(name: name, weight: 90)
//    }
//    override func check() {
//        print("Hi")
//    }
//
//}
//
//var b = goldenFish(color1: "Gold", name: "GoldenFish")
//print(b.name)
//print(b.color)
//b.check()

//var c = Fish(name: "sd", weight: 9)
//c.check()

//let name = g


//Class vs Struct reference vs value type example.

//class check1 {
//  var name: String = ""
//    init(name1: String) {
//        self.name = name1
//    }
//    func getName() -> String {
//        return self.name
//    }
//}

//var a = check1(name1: "sdsd")
////a.set(name: "sdsd")
//
//let b = a.getName()
//print(b)
//
//var c = a
//c.name = "dsdsds"
////c.set(name: "Deep is learning")
//let d = c.getName()
//print(d)

//struct Example {
//    var check: String = ""
//    func changeVar(check1: String) {
//        check = check1
//    }
//    func getVar() -> String {
//        return check
//    }
//}
//var b = Example()
//b.changeVar(check1: "sd")

//Protocol Learning

//protocol check {
//    func aCheck() -> Int
//}
//protocol b: check {
//    func bCheck()
//}
//
//class Examole: check, b {
//    func aCheck() -> Int {
//        return 10
//    }
//
//    func bCheck() {
//        print("Hi")
//    }
//}
//
//let sd = Examole()
//let c = sd.aCheck()
//sd.bCheck()
//print(c)

// Extensions
//extension Int {
//    func square() -> Int {
//        return self * self
//    }
//}
//
//let a = 4
// let b = a.square()
//print(b)

//Optional
//var a: String? =  nil
//print(a!.count)

//func getName(name: String) -> String? {
//    if name == "" {
//        return nil
//    } else {
//        return "Good Morning Deep"
//    }
//}
//
//let b: String?  = getName(name: "sdsd")
//if let value = b {
//    print(value)
//}

//enum PassWordError: Error {
//    case Fail
//
//}
//
//
//    func check(_ password: String) throws -> Bool {
//        if password == "Deep" {
//            throw  PassWordError.Fail
//        }
//        return true
//    }

//do {
//    if let _ = try? check("Deep") {
//        print("w")
//    } else {
//        print("correct")
//    }

      //  try! check("Deep1")
       // print("It's fine")
//}




//enum PasswordError: Error {
//    case obvious
//}
//
//func checkPassword(_ password: String) throws -> Bool {
//    if password == "password" {
//        throw PasswordError.obvious
//    }
//    
//    return true
//}
//
//do {
//    try checkPassword("password")
//    print("That password is good!")
//} catch {
//    print("You can't use that password.")
//}


//struct Person {
//    var id: String
//
//    init?(id: String) {
//        if id.count == 9 {
//            self.id = id
//        } else {
//            return nil
//        }
//    }
//}
//
//let c = Person(id: "asdfassddsw")
//if let ds  = c {
//    print("c")
//} else {
//
//    print("s")
//}


//class Person {
//    var residence: Residence? = Residence()
//
//}
//
//class Residence {
//    var property:Int? = 0
//    var rooms = [Room]()
//    var noOfRooms: Int {// computed property.
//        return rooms.count
//    }
//
//    subscript(i: Int) -> Room {
//        get {
//            return rooms[i]
//        }
//        set {
//        rooms[i] = newValue
//          // rooms.insert(newValue, at: i)
//        }
//    }
////    func setRoom() {
////        rooms.insert(Room(name: "bedRoom"), at: 0)
////    }
//
//    func getRoom() -> Room {
//        return rooms[0]
//    }
//
//    func printRooms() {
//        print(noOfRooms)
//    }
//}

//class Room {
//    let name: String?
//    init(name: String) {
//        self.name = name
//    }
//}
//
//var person = Person()
//var residence = person.residence
//let res = Residence()
//res.rooms.append(Room(name: "bedroom"))
//res.rooms.append(Room(name: "second"))
//person.residence = res
////person.residence?.rooms.append(Room(name: "bedroom"))
////person.residence?.rooms.append(Room(name: "secondroom"))
//if let roomName = person.residence?[0].name {
//    print("yes found")
//} else {
//    print("Not found")
//}
//print(roomName)

//person.residence?.rooms[0] = Room(name: "bedroom")
//residence?[0] = Room(name: "bedRoom")
//person.residence?.printRooms()
//print(person.residence?.getRoom())
//print(person.residence?.property as? Int)
//print(person.residence?.rooms)
//person.residence?.printRooms()
////person.residence?.setRoom()
//let room = person.residence?.getRoom()
//print(room?.name as! String)
//person.residence?.printRooms()
//var a = [Double]()
//a.insert(9.1, at: 0)
//a.append(9.6)
//a.insert(9.32, at: 2)
//a.append(contentsOf: [9.6,9.2])
//print(a.count)
//print(a)
//
//var str1: [String] = ["sds", "sdsd"]
//print(str1)
//
//for(index, value) in str1.enumerated() {
//    print("Item\(index) with Value : \(value)")
//}
//
//let oddDigits: Set = [1, 3, 5, 7, 9]
//let evenDigits: Set = [0, 2, 4, 6, 8]
//let singleDigitPrimeNumbers: Set = [2, 3, 5, 7]
//print(oddDigits.subtracting(singleDigitPrimeNumbers).sorted())


//var i = 1
//
//mainLoop: repeat {
//    i += 2
//
//    switch i % 2 {
//    case 0:
//        break mainLoop
//    default:
//        break
//    }
//} while true
//
//print("Complete!")

//let numbers = [1, 3, 5, 7, 9]
//let result = numbers.filter { $0 >= 5 }
//print(result)

//func greet( name: String) {
//    var name = name
//    name = name.uppercased()
//    print("Greetings, \(name)!")
//}
//
//greet(name: "dsd")

//struct TaylorFan {
//    fileprivate var name: String
//}
//
//var fan = TaylorFan(name: "Kailee")
//fan.name = "Simon"
//print(fan.name)



//
//func doStuff() {
//    print("Stuff has been done")
//}
//
//let result = doStuff()
//print(result)

//
//let names = ["Pilot": "Wash", "Doctor": "Simon"]
//
//for (key, value) in names.enumerated() {
//    let testVar = value
//    print(testVar)
//}
//
//enum Planet: Int {
//    case Mercury = 1
//    case Venus = 2
//    case Earth = 6
//    case Mar = 3
//}
//
//let test = Planet(rawValue: 3)
//print(test!)



//Static methodks vs class methods -> Class methods can be overvride while sttaic methods cannot.
//class Example {
//    static var variable: Int = 0
//    class func method1(value: Int) {// its need class keyword
//        variable = value
//        print(variable)
//    }
//
//    static func check() {
//
//    }
//}

//var ex = Example()
//ex.variable = -190
//ex.method1(value: 1000)

//Example.variable = -10
//Example.method1(value: 100002)

//class E: Example {
//    override class func method1(value: Int){
//            variable = value
//    }
////    static func check() {
////
////    }
//}
//Example.method1(value: 100)
//print(Example.variable)
//E.method1(value: 5)
//print(E.variable)
//print(Example.variable)

//struct Check {
//    var n1: Int
//    var n2: String
//}
//let b = Check(n1: 2, n2: "sdsd")
//print(b.n1)
//print(b.n2)



//class m {// Guard let vs if let
//    func check() {
//        var b: String? = "sds"
//        if let a = "sds" as? String {
//            print(a)
//        }
//        guard let a = b else {return}
//
//        print(a)
//    }
//}
//let ob = m()
//ob.check()

//var someDict:[Int:String] = [1:"One", 2:"Two", 3:"Three"]
//
//
//for (index, keyvalue) in someDict.enumerated() {
//   print(index)
// //   print(keyvalue)
//    print(someDict[index])
//}

//protocol Animal {
//    func method1()
//    func methods2()
//    func method3()
//}
//
//extension Animal {
//    func method1() {
//
//    }
//
//    func methods2() {
//        print("ssd")
//    }
//}
//
//class Xyz: Animal {
//    func method3() {
//
//    }
//

    
//    func methods2() {
//        print("check")
//    }
//}

//let ob = Xyz()
//ob.method3()
//ob.methods2()
//ob.method1()



protocol Sound {
    func makeSound()
}

extension Sound {
    func makeSound() {
        print("Wow")
    }
}

protocol Flyable {
    func fly()
}

extension Flyable {
    func fly() {
        print("✈️")
    }
}

class Airplane: Flyable { }
class Pigeon: Sound, Flyable { }
class Penguin: Sound { }


let pigeon = Pigeon()
pigeon.fly()  // prints ✈️
pigeon.makeSound() // prints Wow

let air = Airplane()
air.fly()

let pen = Penguin()
pen.makeSound()





