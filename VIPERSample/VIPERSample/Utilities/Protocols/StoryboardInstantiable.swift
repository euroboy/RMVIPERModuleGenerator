import UIKit

public protocol StoryboardInstantiable: class
{
    static var storyboardName: String { get }
    static var identifier: String { get }
    static func instantiate() -> Self
}

public extension StoryboardInstantiable
{
    static var identifier: String
    {
        return String(describing: Self.self)
    }
    
    private static var storyboard: UIStoryboard
    {
        return UIStoryboard(name: Self.storyboardName, bundle: nil)
    }
    
    static func instantiate() -> Self
    {
        guard let controller = storyboard.instantiateViewController(withIdentifier: identifier) as? Self else
        {
            fatalError("Could not instantiate \(Self.self) from storyboard file.")
        }
        return controller
    }
}
