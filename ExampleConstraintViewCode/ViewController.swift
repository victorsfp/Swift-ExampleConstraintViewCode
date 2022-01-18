//
//  ViewController.swift
//  ExampleConstraintViewCode
//
//  Created by Victor Feitosa on 18/01/22.
//

import UIKit

class ViewController: UIViewController {
    
    let viewAzul = UIView()
    let viewVermelha = UIView()
    let label = UILabel()
    
    let button = UIButton()

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        viewAzul.translatesAutoresizingMaskIntoConstraints = false
        viewAzul.backgroundColor = .blue
        
        viewVermelha.translatesAutoresizingMaskIntoConstraints = false
        viewVermelha.backgroundColor = .red
        
        //viewAzul.frame = CGRect(x: 10, y: 100, width: 370, height: 100)
        //viewVermelha.frame = CGRect(x: 10, y: viewAzul.frame.maxY + 10, width: 150, height: 100)
        
        //viewAzul.frame = CGRect(x: 10, y: 100, width: UIScreen.main.bounds.width - 20, height: 100)
        //viewVermelha.frame = CGRect(x: 10, y: viewAzul.frame.maxY + 10, width: UIScreen.main.bounds.width - 20, height: 100)
        
        //print(UIScreen.main.bounds) //TAMANHO DA TELA
        
        view.addSubview(viewAzul)
        view.addSubview(viewVermelha)
        view.backgroundColor = .white
        
        button.setTitle("Testing", for: .normal)
        button.translatesAutoresizingMaskIntoConstraints = false
        viewVermelha.addSubview(button)
        
        button.addTarget(self, action: #selector(buttonClicked), for: .touchUpInside)
        
        
        
        NSLayoutConstraint.activate([
            viewAzul.topAnchor.constraint(equalTo: view.topAnchor),
            viewAzul.leadingAnchor.constraint(equalTo: view.leadingAnchor),
            viewAzul.trailingAnchor.constraint(equalTo: view.trailingAnchor),
            viewAzul.bottomAnchor.constraint(equalTo: view.bottomAnchor),
            
            viewVermelha.topAnchor.constraint(equalTo: view.safeAreaLayoutGuide.topAnchor),
            viewVermelha.leadingAnchor.constraint(equalTo: view.safeAreaLayoutGuide.leadingAnchor),
            viewVermelha.trailingAnchor.constraint(equalTo: view.safeAreaLayoutGuide.trailingAnchor),
            viewVermelha.bottomAnchor.constraint(equalTo: view.safeAreaLayoutGuide.bottomAnchor),
            
            button.centerXAnchor.constraint(equalTo: viewVermelha.centerXAnchor),
            button.centerYAnchor.constraint(equalTo: viewVermelha.centerYAnchor),
        ])
        
//        let constraints = [
//            viewAzul.topAnchor.constraint(equalTo: view.topAnchor),
//            viewAzul.leadingAnchor.constraint(equalTo: view.leadingAnchor),
//            viewAzul.trailingAnchor.constraint(equalTo: view.trailingAnchor),
//            viewAzul.bottomAnchor.constraint(equalTo: view.bottomAnchor),
//
//            viewVermelha.topAnchor.constraint(equalTo: view.safeAreaLayoutGuide.topAnchor),
//            viewVermelha.leadingAnchor.constraint(equalTo: view.safeAreaLayoutGuide.leadingAnchor),
//            viewVermelha.trailingAnchor.constraint(equalTo: view.safeAreaLayoutGuide.trailingAnchor),
//            viewVermelha.bottomAnchor.constraint(equalTo: view.safeAreaLayoutGuide.bottomAnchor)
//        ]
//        constraints.forEach { item in
//            item.isActive = true
//        }
        
        
    }
    
    @objc func buttonClicked(sender: UIButton) {
        print("Apertou botão")
    }

}

