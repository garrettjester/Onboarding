//
//  SignInViewController.swift
//  ScrollingView
//
//  Created by Garrett Jester on 7/19/18.
//  Copyright © 2018 GRey-T Programs. All rights reserved.
//

import UIKit

class SignInViewController: UIViewController {
    @IBOutlet weak var signInButton: UIButton!
    @IBOutlet weak var signUpButton: UIButton!
    @IBOutlet weak var usernameField: UITextField!
    @IBOutlet weak var passwordField: UITextField!
    @IBOutlet weak var signUPView: UIView!
    
    @IBOutlet weak var selector: UIImageView!
    override func viewDidLoad() {
        super.viewDidLoad()
        
        signUPView.layer.opacity = 0

      
        // Do any additional setup after loading the view.
    }

    @IBAction func signUpTapped(_ sender: Any) {
        signUPView.layer.opacity = 1
    }
    

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destinationViewController.
        // Pass the selected object to the new view controller.
    }
    */

}
