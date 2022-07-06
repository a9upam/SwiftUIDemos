import UIKit

var greeting = "Hello, playground"

//Property Wrapper
//@State
//Binding
//@propertyWrapper
//class UpperCase{
//
//}
//Properties

//@MyClass
//var city:String



@propertyWrapper
class UpperCase {
    
    private(set) var value : String = ""
    
    var wrappedValue : String{
        get{value}
        set {
            value = newValue.uppercased()
        }
    }
    
}

struct Driver{
    
    @UpperCase
    var license : String
    
    @UpperCase
    var state : String
    
}

extension Driver {
    init(license : String){
        self.license = license
    }
}

let driver = Driver(license: "abe34")
print(driver.license)
driver.state = "up"
print(driver.state)
