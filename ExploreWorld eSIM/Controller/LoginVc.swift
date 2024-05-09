//
//  LoginVc.swift
//  ExploreWorld eSIM
//
//  Created by DREAMWORLD on 02/05/24.
//

import UIKit

class LoginVc: UIViewController {
    @IBOutlet weak var lblWelMsg: UILabel!
    
    @IBOutlet weak var viewBg: UIView!
    @IBOutlet weak var viewmain: UIView!{
        didSet{
            viewmain.clipsToBounds = true
            viewmain.layer.cornerRadius = 120
            viewmain.layer.maskedCorners = [.layerMinXMinYCorner] // Top right corner, Top left corner respectively
        }
    }
    
    //    @IBOutlet weak var btnPassHide: UIButton!
    
    @IBOutlet weak var btnLogin: UIButton!
    @IBOutlet weak var btnApple: UIButton!
    @IBOutlet weak var btnGoogle: UIButton!
    @IBOutlet weak var btnFb: UIButton!
    
    
    
    @IBOutlet weak var btnPassHide: UIButton!
    var loginflag = false
    var flagHide = true
    //    @IBOutlet weak var btnPassHide: UIButton!
    @IBOutlet weak var viewbtnApple: UIView!
    @IBOutlet weak var viewbtnGoogle: UIView!
    @IBOutlet weak var viewbtnFB: UIView!
    @IBOutlet weak var lblLoginMsg: UILabel!
    @IBOutlet weak var IviewLogo: UIImageView!
    
    @IBOutlet weak var txtLogin: UITextField!
    
    @IBOutlet weak var txtPass: UITextField!
    
    
    @objc func buttonTapped() {
        // Handle button tap action here
        print("Button tapped")
    }
    
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        self.navigationController?.isNavigationBarHidden = true
        
        
        setData()
        //        txtLogin.setLeftImage(imageName: UIImage(named: "MailLogo")!)
        //        txtPass.setLeftImage(imageName: UIImage(named: "PassLogo")!)
        
        // Do any additional setup after loading the view.
        
        txtLogin.setLeftImage(UIImage(named: "Ic_mail")!)
        txtPass.setLeftImage(UIImage(named: "Ic_pass")!)
        
        //        txtPass.setRightButton(image: UIImage(named: "PassHide")!, target: self, action: #selector(buttonTapped))
    }
    //
    
    //    @IBAction func btnPassHideAction(_ sender: Any) {
    //
    //        if flagHide == true {
    //                    btnPassHide.setImage(UIImage(named: "Ic_hide"), for: .normal)
    //                    flagHide = false
    //                    txtPass.isSecureTextEntry = true // Change to txtPass
    //                } else {
    //                    btnPassHide.setImage(UIImage(named: "Ic_unhide"), for: .normal)
    //                    flagHide = true
    //                    txtPass.isSecureTextEntry = false // Change to txtPass
    //                }
    //    }
    @IBAction func btnHidePasswordAction(_ sender: Any) {
        if flagHide == true
        {
            btnPassHide.setImage(UIImage(named: "Ic_hide"), for: .normal)
            flagHide = false
            txtPass.isSecureTextEntry = true // Change to txtPass
        } else {
            btnPassHide.setImage(UIImage(named: "Ic_unhide"), for: .normal)
            flagHide = true
            txtPass.isSecureTextEntry = false // Change to txtPass
        }
        
    }
    
    @IBAction func btnPressedEmailPasswordValidate(_ sender: Any) {
        guard let email = txtLogin.text, !email.isEmpty else {
            showAlert(message: "Please enter your email")
            return
        }
        
        guard let password = txtPass.text, !password.isEmpty else {
            showAlert(message: "Please enter your password")
            return
        }
        
        if !isValidEmail(email: email) {
            showAlert(message: "Please enter a valid email address")
            return
        }
        
        if !isValidPassword(password: password) {
            showAlert(message: "Please enter a valid password. It should contain at least 8 characters, including at least one uppercase letter, one lowercase letter, one digit, and one special character.")
            return
        }
        
        loginflag = true
        UserDefaults.standard.set(true, forKey: "isLoggedIn") // Set isLoggedIn to true
        navigateToHomePage()
    }
    
    
    // this is to navigate loginvc to signupvc
    @IBAction func btnSignUpPassword(_ sender: Any) {
        
        let vc = self.storyboard?.instantiateViewController(withIdentifier: "SignUpVc") as! SignUpVc
        self.navigationController?.pushViewController(vc, animated: true)
        
    }
    
    func navigateToHomePage() {
        
        guard let countryVC = UIStoryboard(name: "Main", bundle: nil).instantiateViewController(withIdentifier: "CountryVc") as? CountryVc else {
                return
            }
            countryVC.loginflag = loginflag
            navigationController?.pushViewController(countryVC, animated: true)
        
    }
        
        func setData(){
            
            settxtBorder(txt: txtPass, borderWidth: 1, borderColor: UIColor(named: "BorderColour"), cornerRadius: txtPass.frame.height/2)
            settxtBorder(txt: txtLogin, borderWidth: 1, borderColor: UIColor(named: "BorderColour"), cornerRadius: txtLogin.frame.height/2)
            setbtnDesign(btn: btnLogin, cornerRadius: 1)
            setRoundViewBtn(viewbtn: viewbtnFB)
            setRoundViewBtn(viewbtn: viewbtnGoogle)
            setRoundViewBtn(viewbtn: viewbtnApple)
            
            //
        }
        
}
