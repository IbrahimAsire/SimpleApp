
import UIKit

class SignUpVC: UIViewController {
    
    let signIn: UILabel = {
        $0.text = "Sign in"
        $0.translatesAutoresizingMaskIntoConstraints = false
        $0.textColor = .black
        
        return $0
    }(UILabel())
    
    let nameTF: UITextField = {
        $0.translatesAutoresizingMaskIntoConstraints = false
        $0.placeholder = "User name"
        $0.borderStyle = .roundedRect
        return $0
    }(UITextField())
    
    let passwordTF: UITextField = {
        $0.translatesAutoresizingMaskIntoConstraints = false
        $0.placeholder = "Password"
        $0.borderStyle = .roundedRect
        return $0
    }(UITextField())
    
    let signInBtn: UIButton = {
        $0.translatesAutoresizingMaskIntoConstraints = false
        $0.setTitle("Sign", for: .normal)
        $0.setTitleColor(.systemOrange, for: .normal)
        $0.backgroundColor = .black
        return $0
    }(UIButton())
    
    let forgetLbl: UILabel = {
        $0.translatesAutoresizingMaskIntoConstraints = false
        $0.text = "Forget password?"
        $0.textColor = .black
        return $0
    }(UILabel())
    
    let orSignUpLbl: UILabel = {
        $0.translatesAutoresizingMaskIntoConstraints = false
        $0.text = "Or sgnUp"
        $0.textColor = .black
        return $0
    }(UILabel())


    override func viewDidLoad() {
        super.viewDidLoad()
        view.backgroundColor = .systemPurple
        
        setUpUI()
    }
    
    private func setUpUI() {
        view.addSubview(signIn)
        view.addSubview(nameTF)
        view.addSubview(passwordTF)
        view.addSubview(signInBtn)
        view.addSubview(forgetLbl)
        view.addSubview(orSignUpLbl)
        
        signInBtn.layer.cornerRadius = 5
        
        NSLayoutConstraint.activate([
            signIn.topAnchor.constraint(equalTo: view.topAnchor, constant: 280),
            signIn.centerXAnchor.constraint(equalTo: view.centerXAnchor),
            
            nameTF.topAnchor.constraint(equalTo: signIn.bottomAnchor, constant: 8),
            nameTF.centerXAnchor.constraint(equalTo: view.centerXAnchor),
            nameTF.widthAnchor.constraint(equalToConstant: 280),
            
            passwordTF.topAnchor.constraint(equalTo: nameTF.bottomAnchor, constant: 8),
            passwordTF.centerXAnchor.constraint(equalTo: view.centerXAnchor),
            passwordTF.widthAnchor.constraint(equalToConstant: 280),
            
            signInBtn.topAnchor.constraint(equalTo: passwordTF.bottomAnchor, constant: 8),
            signInBtn.centerXAnchor.constraint(equalTo: view.centerXAnchor),
            signInBtn.widthAnchor.constraint(equalToConstant: 280),
            
            forgetLbl.topAnchor.constraint(equalTo: signInBtn.bottomAnchor, constant: 12),
            forgetLbl.leftAnchor.constraint(equalTo: view.leftAnchor, constant: 54),
            
            orSignUpLbl.topAnchor.constraint(equalTo: forgetLbl.bottomAnchor, constant: 12),
            orSignUpLbl.leftAnchor.constraint(equalTo: view.leftAnchor, constant: 54),
            
            
        
        ])
        
    }
   
    
}

