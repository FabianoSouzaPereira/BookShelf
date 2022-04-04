//
//  CreateAccountViewController.swift
//  BookShelf
//
//  Created by Fabiano De Souza Pereira on 03/04/22.
//

import UIKit

class CreateAccountViewController: UIViewController {

    @IBOutlet weak var emailAccount: UITextField!
    @IBOutlet weak var passwordAccount: UILabel!
    @IBOutlet weak var checkPassword: UITextField!
    @IBOutlet weak var btnCreateAccount: UIButton!
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        self.btnCreateAccount.layer.cornerRadius = 20
        self.btnCreateAccount.clipsToBounds = true
        
    }
    
    override func viewWillAppear(_ animated: Bool) {
        self.navigationController?.setNavigationBarHidden(false, animated: false)
    }
    
    
    @IBAction func createAccount(_ sender: Any) {
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
