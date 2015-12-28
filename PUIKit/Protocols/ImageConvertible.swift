
public protocol ImageConvertible: ImageNameConvertible {
    func image() -> Image?
}

extension ImageConvertible {
    public func image() -> Image? {
        return Image.p_fromImageNameConvertible(self)
    }
}