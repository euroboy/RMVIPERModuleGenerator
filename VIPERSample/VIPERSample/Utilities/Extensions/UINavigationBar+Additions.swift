import UIKit

extension UINavigationBar
{
    class func setupAppearance()
    {
        self.appearance().isTranslucent = false
        self.appearance().shadowImage = UIImage()
        self.appearance().barTintColor = .darkGray
        self.appearance().tintColor = .white
        self.appearance().barStyle = .black
        
        let attributes = [NSAttributedString.Key.foregroundColor: UIColor.white]
        self.appearance().titleTextAttributes = attributes
        if #available(iOS 11.0, *)
        {
            self.appearance().largeTitleTextAttributes = attributes
            self.appearance().prefersLargeTitles = true
        }
    }
}
