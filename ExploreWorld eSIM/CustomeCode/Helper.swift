//
//  Helper.swift
//  ExploreWorld eSIM
//
//  Created by DREAMWORLD on 02/05/24.
//

import Foundation
import UIKit


extension UIViewController{
    func settxtBorder(txt: UITextField, borderWidth: CGFloat = 0, borderColor: UIColor? = nil, cornerRadius: CGFloat) {
        txt.layer.borderWidth = borderWidth
        txt.layer.borderColor = borderColor?.cgColor
        txt.layer.cornerRadius = cornerRadius
        txt.clipsToBounds = true
    }
    
    func setlblDesign(lbl: UILabel) {
        lbl.layer.cornerRadius = lbl.frame.height/2
        lbl.clipsToBounds = true
        lbl.layer.borderWidth = 2
        lbl.layer.borderColor = UIColor.borderColour2.cgColor
    }
    
    //    func setbtnDesign(btn: UIButton) {
    //        btn.layer.cornerRadius = btn.frame.height/2
    //        btn.clipsToBounds = true
    //
    //    }
    
    func setbtnDesign(btn: UIButton, borderWidth: CGFloat = 0, borderColor: UIColor? = nil, cornerRadius: CGFloat) {
        btn.layer.borderWidth = borderWidth
        btn.layer.borderColor = borderColor?.cgColor
        btn.layer.cornerRadius = cornerRadius
        btn.clipsToBounds = true
    }
    
    
    func setRoundbtn(btn: UIButton) {
        btn.layer.cornerRadius = btn.frame.height/2
        btn.clipsToBounds = true
        btn.layer.borderWidth = 1
        btn.layer.borderColor = UIColor.borderColour.cgColor
        
    }
    
    func setRoundViewBtn(viewbtn: UIView) {
        viewbtn.layer.cornerRadius = viewbtn.frame.height/2
        viewbtn.clipsToBounds = true
        viewbtn.layer.borderWidth = 1
        viewbtn.layer.borderColor = UIColor.borderColour.cgColor
        
        
    }
    
    func isValidMobileNumber(mobileNumber: String) -> Bool {
        // Mobile number should be exactly 10 digits
        let mobileNumberRegex = #"^\d{10}$"#
        let mobileNumberPredicate = NSPredicate(format: "SELF MATCHES %@", mobileNumberRegex)
        return mobileNumberPredicate.evaluate(with: mobileNumber)
    }
    
    func isValidEmail(email: String) -> Bool {
        // Regular expression pattern for email validation
        let emailRegex = #"^[A-Za-z0-9._%+-]+@[A-Za-z0-9.-]+\.[A-Za-z]{2,}$"#
        let emailPredicate = NSPredicate(format: "SELF MATCHES %@", emailRegex)
        return emailPredicate.evaluate(with: email)
    }
    
    // Function to validate password format
    func isValidPassword(password: String) -> Bool {
        // Password should contain at least 8 characters, including at least one uppercase letter, one lowercase letter, one digit, and one special character
        let passwordRegex = #"^(?=.*[a-z])(?=.*[A-Z])(?=.*\d)(?=.*[@$!%*?&])[A-Za-z\d@$!%*?&]{8,}$"#
        let passwordPredicate = NSPredicate(format: "SELF MATCHES %@", passwordRegex)
        return passwordPredicate.evaluate(with: password)
    }
    
    func showAlert(message: String) {
        let alert = UIAlertController(title: "Alert", message: message, preferredStyle: .alert)
        alert.addAction(UIAlertAction(title: "OK", style: .default, handler: nil))
        present(alert, animated: true, completion: nil)
    }
    
    
}

extension UITableViewCell {
    
    func setviewBorder(view: UIView){
        view.backgroundColor = UIColor.bgColourGray
        view.layer.cornerRadius = view.frame.height/2
        view.clipsToBounds = true
        
    }
    
    func setRoundimgIc(ImgView: UIImageView){
        ImgView.layer.cornerRadius = ImgView.frame.height/2
        ImgView.clipsToBounds = true
        
    }
    
    func setViewDegin(view: UIView, cornerRadius: CGFloat) {
        view.layer.cornerRadius = cornerRadius
        view.clipsToBounds = true
    }
    
    
}


extension UITextField{
    
    //    func setLeftImage(imageName:String) {
    //
    //        let imageView = UIImageView(frame: CGRect(x: 0, y: 0, width: 20, height: 20))
    //        imageView.image = UIImage(named: imageName)
    //        self.leftView = imageView;
    //        self.leftViewMode = .always
    //    }
    
    func setLeftImage(_ imageName: UIImage) {
        
        let padding = 12
        let size = 20
        
        let outerView = UIView(frame: CGRect(x: 0, y: 0, width: size+padding, height: size) )
        let iconView  = UIImageView(frame: CGRect(x: padding, y: 0, width: size, height: size))
        iconView.image = imageName
        outerView.addSubview(iconView)
        
        leftView = outerView
        leftViewMode = .always
    }
    //
    //    func setRightButton(image: UIImage?, target: Any?, action: Selector) {
    //        let button = UIButton(type: .custom)
    //        button.addTarget(target, action: action, for: .touchUpInside)
    //        button.frame = CGRect(x: 0, y: 0, width: 20, height: 20)
    //
    //        if let image = image {
    //            button.setImage(image, for: .normal)
    //            button.imageView?.contentMode = .scaleAspectFit
    //        }
    //        // Adjust the right inset to add space between the image and the right edge
    //                let inset: CGFloat = 8 // Adjust this value as needed
    //                button.imageEdgeInsets = UIEdgeInsets(top: 0, left: 0, bottom: 0, right: inset)
    //
    //        rightView = button
    //        rightViewMode = .always
    //    }
    
    
}


