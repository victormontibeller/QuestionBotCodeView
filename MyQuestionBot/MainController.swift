//
//  MainController.swift
//  MyQuestionBot
//
//  Created by iOS Lab on 04/05/24.
//

import UIKit

class MainController: UIViewController {

    let myView = MainView()
    
    
    override func loadView() {
        /*
         Função do Ciclo de Vida da Controller que fica repsonsável por criar (carregar) a view principal que a controller vai ficar responsável
         
         Basicamente eh onde o atributo "view" vai ser configurado!
         
         OBS: Caso você mesmo for configurar uma view sua, NÃO DEVE chamar super.loadView()!!!
         */
        view = myView
    }
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        /*
         Função do Ciclo de Vida da Controller que fica repsonsável por fazer as configurações necessárias quando a view já foi configurada!
         */
        
        setupButtonsAction()
    }
    
    
    func setupButtonsAction() {
        myView.clearButton.addTarget(self, action: #selector(clearButtonAction), for: .touchUpInside)
        
        myView.sendButton.addTarget(self, action: #selector(sendButtonAction), for: .touchUpInside)
    }
    
    @objc func clearButtonAction() {
        // Ação do botão de limpar os dados
        myView.helpText.text = ""
    }
    
    @objc func sendButtonAction() {
        // Ação do botão de enviar os dados
        myView.responseLabel.text = updateAnswer(question:myView.helpText.text!)
        myView.helpText.text = ""
    }
}
