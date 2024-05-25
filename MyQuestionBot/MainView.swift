//
//  MainView.swift
//  MyQuestionBot
//
//  Created by iOS Lab on 04/05/24.
//

import UIKit

class MainView: UIView {
    
    /* MARK: - Componentes UI */
    lazy var helpIcon: UIImageView = {
        let icon = UIImageView()
        icon.image = UIImage(named: "Icon")
        // icon.backgroundColor = .blue
        icon.translatesAutoresizingMaskIntoConstraints = false
        // lbl.activateConstraints() // Extension criada pra facilitar o entendimento
        
        return icon
    }()
    
    lazy var helpLabel: UILabel = {
        let lbl = UILabel()
        lbl.text = "Can I Help You?"
        lbl.font = .systemFont(ofSize: 30, weight: .bold)
        lbl.textColor = .black
        lbl.textAlignment = .left
        //lbl.numberOfLines = 0
        //lbl.sizeToFit()
        lbl.adjustsFontSizeToFitWidth = true
        lbl.translatesAutoresizingMaskIntoConstraints = false
        // lbl.activateConstraints() // Extension criada pra facilitar o entendimento
        return lbl
    }()
    
    lazy var responseLabel: UILabel = {
        let lbl = UILabel()
        lbl.text = "???"
        lbl.font = .systemFont(ofSize: 20)
        lbl.textColor = .black
        lbl.textAlignment = .center
        lbl.numberOfLines = 0
        lbl.sizeToFit()
        lbl.translatesAutoresizingMaskIntoConstraints = false
        // lbl.activateConstraints() // Extension criada pra facilitar o entendimento
        return lbl
    }()
    
    lazy var helpText: UITextField = {
        let input = UITextField()
        input.placeholder = "Fale comigo..."
        input.borderStyle = .roundedRect
        input.translatesAutoresizingMaskIntoConstraints = false
        // input.activateConstraints() // Extension criada pra facilitar o entendimento
        return input
    }()
    
    lazy var clearButton: UIButton = {
        let but = UIButton()
        let image = UIImage(systemName: "trash")
        but.setImage(image, for: .normal)
        but.tintColor = .systemRed
        but.translatesAutoresizingMaskIntoConstraints = false
        // but.activateConstraints() // Extension criada pra facilitar o entendimento
        return but
    }()
    
    lazy var sendButton: UIButton = {
        let but = UIButton()
        let image = UIImage(systemName: "paperplane")
        but.setImage(image, for: .normal)
        but.tintColor = .systemBlue
        
        but.translatesAutoresizingMaskIntoConstraints = false
        // but.activateConstraints() // Extension criada pra facilitar o entendimento
        return but
    }()
    
    
    /* MARK: - Construtores */
    init() {
        super.init(frame: .zero)
        setupView()
    }
    
    required init?(coder: NSCoder) { nil }
    
    
    /* MARK: - Configurações */
    func setupView() {
        setupHierarchy()
        setupConstraints()
        setupUI()
    }
    
    func setupHierarchy() {
        addSubview(helpLabel)
        addSubview(responseLabel)
        addSubview(helpText)
        addSubview(clearButton)
        addSubview(sendButton)
        addSubview(helpIcon)
    }
    
    func setupConstraints() {
        let lateral: CGFloat = 16
        let square: CGFloat = 20
        let image: CGFloat = 100

        let constraints = [
            
            // Help Icon
            helpIcon.topAnchor.constraint(equalTo: safeAreaLayoutGuide.topAnchor, constant: 25),
            helpIcon.leftAnchor.constraint(equalTo: leftAnchor, constant: lateral),
            helpIcon.widthAnchor.constraint(equalToConstant: image),
            helpIcon.heightAnchor.constraint(equalToConstant: image),
            
            // Help Label
            helpLabel.centerYAnchor.constraint(equalTo: helpIcon.centerYAnchor),
            helpLabel.leftAnchor.constraint(equalTo: helpIcon.rightAnchor, constant: lateral),
            helpLabel.rightAnchor.constraint(equalTo: self.rightAnchor, constant: -lateral),
            
            // Response Label
            responseLabel.topAnchor.constraint(equalTo: helpIcon.bottomAnchor, constant: lateral),
            responseLabel.leftAnchor.constraint(equalTo: self.leftAnchor, constant: lateral),
            responseLabel.rightAnchor.constraint(equalTo: self.rightAnchor, constant: -lateral),
            responseLabel.heightAnchor.constraint(equalToConstant: 100),
            
            // Clear Button
            clearButton.topAnchor.constraint(equalTo: responseLabel.bottomAnchor, constant: lateral),
            clearButton.rightAnchor.constraint(equalTo: self.rightAnchor, constant: -lateral),
            clearButton.heightAnchor.constraint(equalToConstant: square),
            clearButton.widthAnchor.constraint(equalToConstant: square),
            
            // Send Button
            sendButton.centerYAnchor.constraint(equalTo: clearButton.centerYAnchor),
            sendButton.rightAnchor.constraint(equalTo: clearButton.leftAnchor, constant: -lateral),
            sendButton.heightAnchor.constraint(equalToConstant: square),
            sendButton.widthAnchor.constraint(equalToConstant: square),
            
            // Help Text
            helpText.centerYAnchor.constraint(equalTo: clearButton.centerYAnchor),
            helpText.rightAnchor.constraint(equalTo: sendButton.leftAnchor, constant: -lateral),
            helpText.heightAnchor.constraint(equalToConstant: 30),
            helpText.leftAnchor.constraint(equalTo: self.leftAnchor, constant: lateral)
            
        ]
        
        // Ativando as contrains:
        
        // Fomra 01: mais recomendada!
        NSLayoutConstraint.activate(constraints)
        
        // Forma 02: ativar uma por uma:
        // inputText.topAnchor.constraint(equalTo: topAnchor, constant: 10).isActive = true
    }
    
    func setupUI() {
        backgroundColor = .white
    }
    
}
