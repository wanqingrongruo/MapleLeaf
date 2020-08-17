//
//  ViewController.swift
//  MapleLeaf
//
//  Created by wanqingrongruo on 08/17/2020.
//  Copyright (c) 2020 wanqingrongruo. All rights reserved.
//

import UIKit
import MapleLeaf

class ViewController: UIViewController {
    
    var isBlinking = false
    let blinkingLabel = BlinkingLabel(frame: CGRect(x: 10, y: 200, width: 200, height: 30))

    override func viewDidLoad() {
        super.viewDidLoad()
        
        setupLabel()
        setupButton()
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    func setupLabel() {
        blinkingLabel.text = "I blink!"
        blinkingLabel.font = .systemFont(ofSize: 20)
        view.addSubview(blinkingLabel)
        blinkingLabel.startBlinking()
        isBlinking = true
    }

    func setupButton() {
        let toggleButton = UIButton(type: .custom)
        toggleButton.frame = CGRect(x: 10, y: 260, width: 125, height: 30)
        toggleButton.setTitle("Toggle blinking", for: .normal)
        toggleButton.setTitleColor(.red, for: .normal)
        toggleButton.addTarget(self, action: #selector(toggleBlinking), for: .touchUpInside)
        view.addSubview(toggleButton)
    }
    
    @objc func toggleBlinking() {
        if isBlinking {
            blinkingLabel.stopBlinking()
        } else {
            blinkingLabel.startBlinking()
        }
        
        isBlinking.toggle()
    }
}

