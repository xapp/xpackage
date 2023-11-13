import UIKit

public class XLink {
    
    // MARK: - canOpenURL
    
    #if os(iOS)
    public static func canOpen(url: URL) -> Bool {
        UIApplication.shared.canOpenURL(url)
    }
    #endif
    
    
    
    
    
    // MARK: - OpenURL
    #if os(iOS)
    @available(iOS 10.0, *)
    public static func openURL(url: URL,
                               options: [UIApplication.OpenExternalURLOptionsKey: Any],
                               completion: @escaping (_ completed: Bool) -> Void) {
            
        UIApplication.shared.open(url,
                                  options: options) { (completed: Bool) in
            completion(completed)
        }
    }
    #endif
    
    
    
    #if os(iOS)
    @available(iOS 13.0, *)
    public static func openURL(url: URL, options: [UIApplication.OpenExternalURLOptionsKey: Any]) async -> Bool {
        await UIApplication.shared.open(url, options: options)
    }
    #endif
}
