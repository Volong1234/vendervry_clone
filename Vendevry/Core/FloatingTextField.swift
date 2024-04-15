import Foundation
import UIKit

enum placeholderDirection: String {
    case placeholderUp = "up"
    case placeholderDown = "down"
    
}
public class FloatingTextFiledPlaceHolder: UITextField {
    var enableMaterialPlaceHolder : Bool = true
    var placeholderAttributes = NSDictionary()
    var lblPlaceHolder = UILabel()
    var borderView = UIView()
//    var defaultFont = AppFont.regular_13.getFont()
    var difference: CGFloat = 22.0
    var directionMaterial = placeholderDirection.placeholderUp
    var isUnderLineAvailabe : Bool = true
    var title: String = ""
    var isFirst: Bool = true
    override init(frame: CGRect) {
        super.init(frame: frame)
        Initialize ()
    }
    required init?(coder aDecoder: NSCoder) {
        super.init(coder: aDecoder)
        Initialize ()
    }
    func Initialize(){
        self.clipsToBounds = false
        self.addTarget(self, action: #selector(FloatingTextFiledPlaceHolder.textFieldDidChange), for: .editingChanged)
        self.EnableMaterialPlaceHolder(enableMaterialPlaceHolder: true)
        self.placeholder = title
    }
    
    @IBInspectable var placeHolderColor: UIColor? = UIColor.lightGray {
        didSet {
            self.attributedPlaceholder = NSAttributedString(string: self.title ,
                                                            attributes:[NSAttributedString.Key.foregroundColor: placeHolderColor!])
        }
    }
    
    override public var attributedText:NSAttributedString?  {
        didSet {
        }
        willSet {
            if (self.placeholder != nil) && (self.text != "")
            {
                let string = NSString(string : self.placeholder!)
                self.placeholderText(string)
            }
            
        }
    }
    
    @objc func textFieldDidChange(){
      //  let font = defaultFont
        let stringSize = title.size(withAttributes: [NSAttributedString.Key.font: font])
        let width = stringSize.width
        if self.enableMaterialPlaceHolder {
            if (self.text == nil) || (self.text?.count)! > 0 {
                self.lblPlaceHolder.alpha = 1
                self.attributedPlaceholder = nil
                self.lblPlaceHolder.backgroundColor = .white
                self.lblPlaceHolder.layer.borderColor = UIColor.white.cgColor
                self.lblPlaceHolder.layer.borderWidth = 0.5
                self.lblPlaceHolder.text = title
                self.lblPlaceHolder.textColor = .lightGray
                self.lblPlaceHolder.frame.origin.x = 8
               // self.lblPlaceHolder.font = defaultFont
            }
            UIView.animate(withDuration: 0.5, delay: 0, usingSpringWithDamping: 0.6, initialSpringVelocity: 1, options: .curveEaseInOut, animations: {() -> Void in
                if (self.text == nil) || (self.text?.count)! <= 0 {
                  //  self.lblPlaceHolder.font = self.defaultFont
                    self.lblPlaceHolder.frame = CGRect(x: self.lblPlaceHolder.frame.origin.x, y : 2, width :self.frame.size.width - 16, height : self.frame.size.height - 8)
                    self.isFirst = true
                }
                else {
                    if self.isFirst{
                        switch width {
                        case 0...30 :
                            self.lblPlaceHolder.frame = CGRect(x : self.lblPlaceHolder.frame.origin.x, y : -self.difference, width :  30 , height : self.frame.size.height)
                            
                        case 30...50 :
                            self.lblPlaceHolder.frame = CGRect(x : self.lblPlaceHolder.frame.origin.x, y : -self.difference, width :  50 , height : self.frame.size.height)
                            
                        case 50...70 :
                            self.lblPlaceHolder.frame = CGRect(x : self.lblPlaceHolder.frame.origin.x, y : -self.difference, width :  60 , height : self.frame.size.height)
                            
                        default :
                            self.lblPlaceHolder.frame = CGRect(x : self.lblPlaceHolder.frame.origin.x, y : -self.difference, width :  width , height : self.frame.size.height)
                        }
                        self.isFirst = false
                    }
                }
            }, completion: {(finished: Bool) -> Void in
            })
        }
    }
    func EnableMaterialPlaceHolder(enableMaterialPlaceHolder: Bool){
        self.enableMaterialPlaceHolder = enableMaterialPlaceHolder
        let width = self.frame.size.width
        let height = self.frame.size.height
        self.borderView.frame = CGRect(x: 0, y : 0, width : width - 38, height : height)
        self.borderView.layer.borderWidth = 1
        self.borderView.layer.borderColor = UIColor.red.cgColor
        self.borderView.layer.cornerRadius = 4
        self.borderView.isHidden = true
        self.addSubview(self.borderView)
        self.lblPlaceHolder = UILabel()
        self.lblPlaceHolder.frame = CGRect(x: 0, y : 0, width : width - 38 , height : height)
       // self.lblPlaceHolder.font = defaultFont
        self.lblPlaceHolder.layer.borderColor = UIColor.white.cgColor
        self.lblPlaceHolder.layer.borderWidth = 1
        self.lblPlaceHolder.alpha = 0
        self.lblPlaceHolder.clipsToBounds = true
      //  self.bringSubview(toFront: self.lblPlaceHolder)
        self.addSubview(self.lblPlaceHolder)
//        self.lblPlaceHolder.attributedText = self.attributedPlaceholder
    }
    
    var textPadding = UIEdgeInsets(
            top: 10,
            left: 0,
            bottom: 10,
            right: 30
        )

       public override func textRect(forBounds bounds: CGRect) -> CGRect {
            let rect = super.textRect(forBounds: bounds)
           return rect.inset(by: textPadding )
        }

       public override func editingRect(forBounds bounds: CGRect) -> CGRect {
            let rect = super.editingRect(forBounds: bounds)
           return rect.inset(by: textPadding )
        }
    
    func placeholderText(_ placeholder: NSString){
        let atts  = [NSAttributedString.Key.foregroundColor: UIColor.lightGray, NSAttributedString.Key.font: UIFont.labelFontSize] as [NSAttributedString.Key : Any]
        self.attributedPlaceholder = NSAttributedString(string: placeholder as String , attributes:atts)
        self.EnableMaterialPlaceHolder(enableMaterialPlaceHolder: self.enableMaterialPlaceHolder)
    }
    
    override public func becomeFirstResponder()->(Bool){
        let returnValue = super.becomeFirstResponder()
        return returnValue
    }
    override public func resignFirstResponder()->(Bool){
        let returnValue = super.resignFirstResponder()
        return returnValue
    }
    
    override public func layoutSubviews() {
        super.layoutSubviews()
    }
}
