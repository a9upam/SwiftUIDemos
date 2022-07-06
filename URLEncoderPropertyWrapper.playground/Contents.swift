import UIKit

var greeting = "Hello, playground"

@propertyWrapper
class URLEncoder{
    
    private (set) var value : String = ""
    
    var wrappedValue : String{
        get{value}
        set{
            if let encodedUrl = newValue.addingPercentEncoding(withAllowedCharacters: .urlHostAllowed){
                self.value = encodedUrl
            }
        }
    }
}


struct MyWebSite {
    
    @URLEncoder
    var cityName : String
    
}

extension MyWebSite {
    init(cityName: String){
        self.cityName = cityName
    }
}

let mywebsite = MyWebSite(cityName: "Los Angles")
print(mywebsite.cityName)
