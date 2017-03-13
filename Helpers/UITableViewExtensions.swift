import Foundation

public extension UITableView {
    public func register<T: UITableViewCell>(_ type: T.Type) {
        register(T.nib, forCellReuseIdentifier: T.nibName)
    }
}
