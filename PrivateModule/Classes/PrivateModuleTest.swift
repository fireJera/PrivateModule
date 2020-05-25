import Foundation

open class PrivateModuleTest: NSObject {
    public var count = 0
    public func test() {
        print("called func: \(#function), count is \(count)")
    }
}
