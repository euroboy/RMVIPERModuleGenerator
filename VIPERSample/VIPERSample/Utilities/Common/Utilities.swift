import Foundation
import NotificationBannerSwift

func executeAfter(seconds: Double, block: @escaping () -> Void)
{
    DispatchQueue.main.asyncAfter(deadline: .now() + seconds) {
        block()
    }
}

func executeInMain(block: @escaping () -> Void)
{
    DispatchQueue.main.async {
        block()
    }
}

func executeAsync(block: @escaping () -> Void)
{
    DispatchQueue.global().async {
        block()
    }
}

func showBannerAlert(title: String?, message: String?, style: BannerStyle)
{
    let banner = NotificationBanner(title: title ?? "", subtitle: message ?? "", style: style)
    banner.duration = 3
    banner.show()
}
