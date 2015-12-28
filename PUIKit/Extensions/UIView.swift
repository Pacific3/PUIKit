
public typealias View = UIView

extension View {
    public func p_setBackgroundColor<C: ColorConvertible>(color: C) {
        backgroundColor = color.color()
    }
}