//
//  ViewController.swift
//  PushScreen
//
//  Created by Ozgun Dogus on 19.06.2023.
//

import UIKit

class FirstViewController: UIViewController {

    private let button : UIButton = {
        
        let button = UIButton()
        button.backgroundColor = .systemTeal
        
        button.setTitle("Next Controller", for: .normal)
        button.layer.cornerRadius = 7
        button.setTitleColor(.red, for: .normal)

        return button
    }()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        self.setupUI()
        
        self.button.addTarget(self, action: #selector(didTapButton), for: .touchUpInside)
        changeNavigationBar()
    }

    private func setupUI() {
        self.view.backgroundColor = .systemGreen.withAlphaComponent(0.3)
        self.view.addSubview(button)
        self.button.translatesAutoresizingMaskIntoConstraints = false
        
        NSLayoutConstraint.activate([
            
            button.centerXAnchor.constraint(equalTo: self.view.centerXAnchor),
            button.centerYAnchor.constraint(equalTo: self.view.centerYAnchor),
            button.widthAnchor.constraint(equalToConstant: 200),
            button.heightAnchor.constraint(equalToConstant: 44),
        ])
     }

    @objc func didTapButton () {
    
        let vc = SecondViewController()
       
       
        
        self.navigationController?.pushViewController(vc, animated: true)
        
    }
    
    private func changeNavigationBar() {
        
        navigationController?.navigationBar.tintColor = .black
        
        navigationController?.navigationBar.barTintColor = .black
        
        
        
        
        navigationController?.navigationBar.titleTextAttributes = [
        
            .foregroundColor: UIColor.white,
                .font: UIFont.boldSystemFont(ofSize: 18)
        ]
        
        navigationItem.title = "First Page"
        
    }
    
}

