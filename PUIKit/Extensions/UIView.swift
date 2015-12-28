
public typealias View = UIView

extension View {
    public func p_setBackgroundColor<C: ColorConvertible>(color: C) {
        backgroundColor = color.color()
    }
    
    public func p_setBorderColor<C: ColorConvertible>(color: C) {
        layer.borderColor = color.color().CGColor
    }
}