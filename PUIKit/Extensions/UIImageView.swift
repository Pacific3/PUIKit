
public typealias ImageView = UIImageView

extension ImageView {
    public func p_setImage<I: ImageConvertible>(image: I) {
        self.image = image.image()
    }
}
