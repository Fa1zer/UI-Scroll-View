//
//  ProfileViewController.swift
//  Navigation
//
//  Created by Artemiy Zuzin on 30.05.2021.
//  Copyright © 2021 Artem Novichkov. All rights reserved.
//

import UIKit

class ProfileViewController: UIViewController {
    @IBOutlet weak var HeaderView: ProfileHeaderView!    
  
    var secondButton: UIButton = {
       let button = UIButton()
        
        button.setTitle("Button", for: .normal)
        button.tintColor = .white
        button.backgroundColor = .systemBlue
        
        return button
    }()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        self.view.backgroundColor = .lightGray
        
        view.addSubview(secondButton)
        
        secondButton.translatesAutoresizingMaskIntoConstraints = false
        NSLayoutConstraint.activate([secondButton.leadingAnchor.constraint(equalTo: view.leadingAnchor),
            secondButton.trailingAnchor.constraint(equalTo: view.trailingAnchor),
            secondButton.bottomAnchor.constraint(equalTo: view.safeAreaLayoutGuide.bottomAnchor),
            secondButton.widthAnchor.constraint(equalToConstant: 40)])
    }
}
