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
    
    @IBOutlet weak var signUpSelector: UIImageView!
    @IBOutlet weak var signUpButton: UIButton!
    
    @IBOutlet weak var signInSelector: UIImageView!
    @IBOutlet weak var signUpStackView: UIStackView!
    @IBOutlet weak var signInStackView: UIStackView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        signUpStackView.isHidden = true
        signInStackView.isHidden = false
        signUpSelector.isHidden = true
        signInSelector.isHidden = false
    
    }

    @IBAction func signUpTapped(_ sender: Any) {
        signUpStackView.isHidden = false
        signInStackView.isHidden = true
        signUpSelector.isHidden = false
        signInSelector.isHidden = true
    }
    
    @IBAction func signInTapped(_ sender: UIButton) {
        signUpStackView.isHidden = true
        signInStackView.isHidden = false
        signUpSelector.isHidden = true
        signInSelector.isHidden = false
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
