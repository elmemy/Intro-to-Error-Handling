import UIKit

var str = "Hello, playground"



enum HeightError:Error{
    case maxHeight
    case minHeight
}


func checkHeightError(height:Int) throws{
    if height > 200{
        throw HeightError.maxHeight
    }else if height < 140{
        throw HeightError.minHeight
    }else{
        print("enjoy")
    }
}



do{
    try checkHeightError(height: 120)
}catch HeightError.maxHeight{
    print("You are very tall")
}catch HeightError.minHeight{
    print("your are very short")
}


enum CheckCourSeName:Error{
    case noName
}


class Course{
    var name:String
    
    init(name:String)throws {
        if name == ""{
            throw CheckCourSeName.noName
        }else{
            self.name = name
        }
    }
}


do{
    try Course.init(name: "")
}catch CheckCourSeName.noName{
    print("No Course Name")
}


let newDopeCourse = try? Course(name: "") // nil

