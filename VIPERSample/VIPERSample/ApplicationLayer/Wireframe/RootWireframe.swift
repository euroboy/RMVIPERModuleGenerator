import UIKit

class RootWireframe: NSObject
{
    weak var window: UIWindow?
    
    // MARK: Routing
    public func showMainApplication()
    {
        let controller = GenresModuleConfigurator.configureModule()
        let navController = UINavigationController(rootViewController: controller)
        window?.rootViewController = navController
    }
}
