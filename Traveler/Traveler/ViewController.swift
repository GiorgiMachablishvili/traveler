//
//  ViewController.swift
//  Traveler
//
//  Created by Gio's Mac on 02.09.24.
//

import UIKit
import SnapKit

class ViewController: UIViewController {
    
    private lazy var nameLabel: UILabel = {
        let view = UILabel(frame: .zero)
        view.text = "travel up"
        view.textColor = .black
        view.textAlignment = .center
        view.numberOfLines = 1
        return view
    }()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        setup()
        layout()
        
        view.backgroundColor = .white
    }
    
    func setup() {
        view.addSubview(nameLabel)
    }
    
    func layout() {
        nameLabel.snp.remakeConstraints { make in
            make.top.equalTo(view.safeAreaLayoutGuide.snp.top).offset(20)
            make.leading.trailing.equalToSuperview().inset(20)
            make.height.equalTo(40)
        }
    }
}
