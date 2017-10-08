//
//  PhoneNumberViewController.swift
//  tv ad
//
//  Created by Marissa Bush on 10/7/17.
//  Copyright © 2017 Chavane Minto. All rights reserved.
//

import UIKit

class PhoneNumberViewController: UIViewController {

    @IBOutlet weak var lastTextField: UITextField!
    @IBOutlet weak var twoTextField: UITextField!
    @IBOutlet weak var areaCodeTextField: UITextField!
    
    @IBAction func didTapDone(_ sender: Any) {
        
        let number = areaCodeTextField.text! + twoTextField.text! + lastTextField.text!
        
        User.register(username: number, withPassword: "1234") { (success: Bool, error: Error?) in
            if let error = error {
                print("User sign up failed: \(error.localizedDescription)")
            } else if success{
                print("User was created")
                self.performSegue(withIdentifier: "finishSignup", sender: nil)
            }
        }
    }
    
    
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
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
