import Foundation

extension Error
{
    var code: Int
    {
        return (self as NSError).code
    }
    
    var domain: String
    {
        return (self as NSError).domain
    }
}
