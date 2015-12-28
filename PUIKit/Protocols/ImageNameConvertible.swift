
public protocol ImageNameConvertible: Hashable {
    var imageName: String { get set }
}

extension ImageNameConvertible {
    public var hashValue: Int {
        return imageName.hashValue
    }
}

public func ==<I: ImageNameConvertible>(lhs: I, rhs: I) -> Bool {
    return lhs.hashValue == rhs.hashValue
}
