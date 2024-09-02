//
//  ViewController.swift
//  Traveler
//
//  Created by Gio's Mac on 02.09.24.
//

import UIKit
import SnapKit

class ViewController: UIViewController {
    private lazy var titleLabel: UILabel = {
      let view = UILabel(frame: .zero)
      view.numberOfLines = 0
      view.text = "Bottom Traveler"
      view.textAlignment = .center
      return view
    }()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        view.backgroundColor = .green
        
        setup()
        layout()
    }
    
    private func setup() {
        view.addSubview(titleLabel)
    }

    private func layout() {
      titleLabel.snp.remakeConstraints { make in
        make.centerX.equalToSuperview()
        make.bottom.equalToSuperview().offset(-20)
      }
    }
}
