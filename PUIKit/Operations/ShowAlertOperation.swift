
public class ShowAlertOperation: Operation {
    private let alertController = UIAlertController(title: nil, message: nil, preferredStyle: .Alert)
    private let presentationContext: UIViewController?
    
    public var title: String? {
        get {
            return alertController.title
        }
        set {
            alertController.title = newValue
            name = newValue
        }
    }
    
    public var message: String? {
        get {
            return alertController.message
        }
        set {
            alertController.message = newValue
        }
    }
    
    public init(presentationContext: UIViewController? = nil) {
        self.presentationContext = presentationContext ?? UIApplication.sharedApplication().keyWindow?.rootViewController
        super.init()
        addCondition(AlertPresentation())
        addCondition(MutuallyExclusive<UIViewController>())
    }
    
    public func addAction(title: String, style: UIAlertActionStyle = .Default, handler: ShowAlertOperation -> Void = { _ in }) {
        let action = UIAlertAction(title: title, style: style) { [weak self] _ in
            if let strongSelf = self {
                handler(strongSelf)
            }
            
            self?.finish()
        }
        
        alertController.addAction(action)
    }
    
    
    override public func execute() {
        guard let presentationContext = presentationContext else {
            finish()
            
            return
        }
        
        executeOnMainThread {
            if self.alertController.actions.isEmpty {
                self.addAction("Ok")
            }
            
            presentationContext.presentViewController(self.alertController, animated: true, completion: nil)
        }
    }
}

public enum Alert { }
public typealias AlertPresentation = MutuallyExclusive<Alert>
