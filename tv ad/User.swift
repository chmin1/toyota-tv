//
//  User.swift
//  tv ad
//
//  Created by Marissa Bush on 10/7/17.
//  Copyright © 2017 Chavane Minto. All rights reserved.
//

import UIKit
import Parse

class User: NSObject {
    class func register(username: String?, withPassword password:String?, withCompletion completion: PFBooleanResultBlock?) {
        
        let newUser = PFUser()
        newUser.username = username
        newUser.password = password
        newUser.signUpInBackground { (success: Bool, error: Error?) in
            if success {
                print("Good Job!")
                completion!(success, error)
            } else {
                print("Error signing in:\(error?.localizedDescription)")
            }
        }
    }

    
}
