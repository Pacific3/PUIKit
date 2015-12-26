
public protocol ColorConvertible: HexColorConvertible {
    func color() -> Color
}

extension ColorConvertible {
    func color() -> Color {
        return Color.p_fromHexColorConvertible(self)
    }
}