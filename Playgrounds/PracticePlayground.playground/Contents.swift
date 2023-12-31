import Cocoa
import Foundation
import SwiftUI

func findNumber(arr: [Int], k: Int) -> String {
    
    let newArr = arr.sorted()
      
    var min = 0
    var max = arr.count - 1
    var middle = 0
    
    while min <= max {
        middle = (min+max) / 2
        if newArr[middle] == k{
            return "YES"
        } else if newArr[middle] > k {
            max = middle - 1
        } else{
            min = middle + 1
        }
    }
    
    return "NO"
}

func oddNumbers(l: Int, r: Int) -> [Int] {
    var arrRet: [Int] = []
    for i in l...r {
        if i%2 != 0 {
            arrRet.append(i)
        }
    }
    return arrRet
}

func fizzBuzz(_ n: Int) -> Void {
    var fb = ""
    for i in 1...n{
        fb = ""
        if i%3 != 0 && i%5 != 0 {
            print(i)
        } else{
            if (i%3 == 0){
                fb = "Fizz"
            }
            if (i%5 == 0){
                fb += "Buzz"
            }
            print(fb)
        }
    }
}

enum planet: Int{
    case mercury = 1, otro, otrmas
}
//print("\(planet.otro.rawValue)")

//print(oddNumbers(l: 3, r: 9))
func foo() {
var isok: Bool? = false
    if isok == false{
        let x: String = String(isok!)
        let y: String = String(!isok!)
        print(x + "<," + y)
    }
}
//foo()

//print(x)

//let a: Character = "a"
//switch a{
//case "a":
//   // print("q")
//default:
//    //print("h")
//}
extension String {

    func insertSeparator(_ separatorString: String, atEvery n: Int) -> String {
        guard 0 < n else { return self }
        return self.enumerated().map({String($0.element) + (($0.offset != self.count - 1 && $0.offset % n ==  n - 1) ? "\(separatorString)" : "")}).joined()
    }

    mutating func insertedSeparator(_ separatorString: String, atEvery n: Int) {
        self = insertSeparator(separatorString, atEvery: n)
    }
}
func add(cardNumber: String, pinNumber: String) -> String {
    var msgCard = ""
    var msgPin = ""
    var msgSuccess = ""
    var myCard = cardNumber.filter(\.isWholeNumber )
    var myPin = pinNumber.filter(\.isWholeNumber )
   
    if myCard.count < 16{
        msgCard = "Incomplete card number. "
    }
    if myPin.count < 4{
        msgPin = "Incomplete pin number. "
    }
    if (msgPin == "" && msgCard == ""){
        msgSuccess = "Success. "
    }
    
    myCard = String(myCard.prefix(16))
    myCard = myCard.insertSeparator(" ", atEvery: 4)
    myPin = String(myPin.prefix(4))
    
    return "\(msgCard)\(msgPin)\(msgSuccess)Card: \(myCard) PIN: \(myPin)"
}

//print(add(cardNumber: "12345678912345aa11", pinNumber: "5678ss33"))

struct Product: Codable{
    var id:Int
    var name:String
}
struct Catergory:Codable{
    var id: Int
    var name: String
}
//final execercise
class HelloLogger {
    
    private var queue: OperationQueue
    private var homeBannerText = ""
    
    init() {
        queue = OperationQueue()
        queue.maxConcurrentOperationCount = 1
        queue.qualityOfService = .userInitiated
    }
    
    func start() {
        queue.addOperation {
            for i in 0..<1000 {
                self.homeBannerText = "Hello \(i)"
                //Log.d.print(self.homeBannerText)
                Thread.sleep(forTimeInterval: 2)
            }
        }
    }
}
final class Accont{
    var name: String
    init(name: String){
        self.name = name
    }
}

let accounts = ["0":Accont(name: "hello")]
accounts["0"]?.name = "world"

//print("Account: \(accounts["0"]!.name)")

var names = ["alex", "ramon","carmen","gene"]

var reversed = names.sort({$0 > $1})
