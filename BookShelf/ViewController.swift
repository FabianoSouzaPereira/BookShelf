//
//  ViewController.swift
//  BookShelf
//
//  Created by Fabiano De Souza Pereira on 03/04/22.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var btnEntre: UIButton!
    @IBOutlet weak var btnCreateAccount: UIButton!
    
    override func viewDidLoad() {
        super.viewDidLoad()

    }

    override func viewWillAppear(_ animated: Bool) {
        self.navigationItem.title = "BookShelf"
        self.navigationController?.setNavigationBarHidden(true, animated: false)
        
        btnEntre.layer.cornerRadius = 20
        btnEntre.clipsToBounds = true
        btnCreateAccount.layer.cornerRadius = 20
        btnCreateAccount.clipsToBounds = true
    }
    
    override func viewWillDisappear(_ animated: Bool) {
        super.viewWillDisappear(animated)

        // needed to clear the text in the back navigation:
        self.navigationItem.title = " "
    }
    
    @IBAction func Login(_ sender: Any) {
    }
    
    @IBAction func createAccount(_ sender: Any) {
    }
    
}
