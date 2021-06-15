import UIKit

protocol Instantiable: AnyObject {
    static func instantiate() -> Self
}

extension Instantiable where Self: UIViewController
{
    /*
        Storyboard name should be the same as UIViewController
        Ex: HomeViewController.swift -> Home.storyboard
    */
    
    static func instantiate() -> Self
    {
        let fullName = NSStringFromClass(self)
        let className = fullName.components(separatedBy: ".")[1]
        let storyboardName = className.replacingOccurrences(of: "ViewController", with: "")
        let storyboard = UIStoryboard(name: storyboardName, bundle: Bundle.main)
        let result = storyboard.instantiateViewController(withIdentifier: className) as! Self
        return result
    }
}
