
public protocol HexColorConvertible: Hashable {
    var hexColor: String { get set }
}

extension HexColorConvertible {
    public var hashValue: Int {
        return hexColor.hashValue
    }
}

public func ==<C: HexColorConvertible>(lhs: C, rhs: C) -> Bool {
    return lhs.hashValue == rhs.hashValue
}