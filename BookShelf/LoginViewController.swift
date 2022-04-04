//
//  LoginViewController.swift
//  BookShelf
//
//  Created by Fabiano De Souza Pereira on 03/04/22.
//

import UIKit

class LoginViewController: UIViewController {

    @IBOutlet weak var email: UITextField!
    @IBOutlet weak var password: UITextField!
    @IBOutlet weak var btnEntre: UIButton!
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
      
        self.btnEntre.layer.cornerRadius = 20
        self.btnEntre.clipsToBounds = true
    }
    
    override func viewWillAppear(_ animated: Bool) {
        self.navigationController?.setNavigationBarHidden(false, animated: false)
    }
    
    @IBAction func login(_ sender: Any) {
    }
    

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destination.
        // Pass the selected object to the new view controller.
    }
    */

}
