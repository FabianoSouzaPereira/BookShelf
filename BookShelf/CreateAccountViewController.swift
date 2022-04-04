//
//  CreateAccountViewController.swift
//  BookShelf
//
//  Created by Fabiano De Souza Pereira on 03/04/22.
//

import UIKit
import FirebaseAuth

class CreateAccountViewController: UIViewController {

    @IBOutlet weak var emailAccount: UITextField!
    @IBOutlet weak var passwordAccount: UITextField!
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
        
        if let email = self.emailAccount.text {
            if let password = self.passwordAccount.text {
                if let passwordConfirmation = self.checkPassword.text {
                    
                    if password == passwordConfirmation {
                       
                        let autenticacao = Auth.auth()
                        autenticacao.createUser(withEmail: email, password: password, completion: {(usuario, erro) in
                            
                            if erro == nil {
                                print("Sucesso ao cadastrar usuáio.")
                            }else{
                                print("Erro ao cadastrar o usuário.")
                            }
                        })
                        
                    }else{
                        
                        self.showMensage(titulo: "Dados incorretos!", mensagem: "As senhas não são iguais.")
                        
                    }
                    
                }
            }
        }
        
    }
    
    func showMensage(titulo: String, mensagem: String){
        let alerta = UIAlertController.init(title: titulo, message: mensagem, preferredStyle: .alert)
        
        let actionCancel = UIAlertAction(title: "Cancelar", style: .cancel, handler: nil)
        
        alerta.addAction(actionCancel)
        present(alerta, animated: true, completion: nil)
        
        
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
