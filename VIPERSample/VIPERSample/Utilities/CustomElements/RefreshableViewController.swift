import UIKit

class RefreshableViewController: UIViewController
{
    private let refreshControl = UIRefreshControl()
    private var scrollView: UIScrollView?
    
    // MARK: Setup
    public func addRefreshControl(to scrollView: UIScrollView)
    {
        self.scrollView = scrollView
        setupAppearance()
        refreshControl.addTarget(self, action: #selector(refreshSelector), for: UIControl.Event.valueChanged)
        //scrollView.refreshControl = refreshControl //This approach was causing some jumping lags
        scrollView.addSubview(refreshControl)
        addFakeView()
    }
    
    /**
     Add fake view below scroll view in order to disable large navigation dragging
     */
    private func addFakeView()
    {
        guard let scrollView = scrollView else
        {
            return
        }
        let fakeView = UIView.init()
        view.insertSubview(fakeView, belowSubview: scrollView)
    }
    
    private func setupAppearance()
    {
        refreshControl.tintColor = .orange
    }
    
    // MARK: Refresh
    public func refresh()
    {
        refreshControl.beginRefreshing()
    }
    
    @objc private func refreshSelector()
    {
        refresh()
    }
    
    // MARK: Programmatical calls for animations
    func startRefreshAnimation()
    {
        scrollView?.setContentOffset(CGPoint.init(x: 0, y: -refreshControl.frame.size.height), animated: true)
        refreshControl.beginRefreshing()
    }
    
    func stopRefreshAnimation()
    {
        // Smooth
        executeInMain { [weak self] in
            self?.refreshControl.endRefreshing()
        }
    }
}
