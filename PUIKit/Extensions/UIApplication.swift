
extension UIApplication {
    public func p_setPrimaryColor(
        primary: Color,
        secondaryColor secondary: Color,
        terciaryColor terciary: Color) {
            UINavigationBar.appearance().barTintColor = primary
            UINavigationBar.appearance().tintColor = secondary
            
            UIBarButtonItem.appearance().tintColor = secondary
            
            UITabBar.appearance().barTintColor = secondary
            UITabBar.appearance().tintColor = primary
            
            UINavigationBar.appearance().titleTextAttributes = [
                NSForegroundColorAttributeName: secondary
            ]
            
            UINavigationBar.appearanceWhenContainedInInstancesOfClasses([UIPopoverPresentationController.self]).barTintColor = secondary
            UINavigationBar.appearanceWhenContainedInInstancesOfClasses([UIPopoverPresentationController.self]).tintColor = primary
            UINavigationBar.appearanceWhenContainedInInstancesOfClasses([UIPopoverPresentationController.self]).titleTextAttributes = [
                NSForegroundColorAttributeName: primary
            ]
    }
    
    public func p_setPrimaryColor<C: ColorConvertible>(
        primary: C,
        secondaryColor secondary: C,
        terciaryColor terciary: C) {
            p_setPrimaryColor(primary.color(),
                secondaryColor: secondary.color(),
                terciaryColor: terciary.color()
            )
    }
}

