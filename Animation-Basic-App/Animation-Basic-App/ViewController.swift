//
//  ViewController.swift
//  Animation-Basic-App
//
//  Created by Vinayak Nagaraj on 12/03/23.
//

import UIKit

class ViewController: UIViewController {
    let shape = CAShapeLayer()
    override func viewDidLoad() {
        super.viewDidLoad()
        
        let cirlcePath = UIBezierPath(arcCenter: view.center, radius: 150, startAngle: 0, endAngle: .pi * 2, clockwise: true)
        
        
        shape.path = cirlcePath.cgPath
        shape.lineWidth = 15
        shape.strokeColor = UIColor.blue.cgColor
        shape.fillColor = UIColor.clear.cgColor
        shape.strokeEnd = 0
        view.layer.addSublayer(shape)
        
        let button = UIButton(frame: CGRect(x: 20, y: view.frame.size.height-70, width: view.frame.size.width-40, height: 50))
        view.addSubview(button)
        button.setTitle("Animate", for: .normal)
        button.backgroundColor = .systemGreen
        button.addTarget(self, action: #selector(didTapButton), for: .touchUpInside)
        
    }
        @objc func didTapButton()
        {
            let animation = CABasicAnimation(keyPath: "strokeEnd")
            animation.toValue = 1
            animation.duration = 3
            animation.isRemovedOnCompletion = false
            animation.fillMode = .forwards
            shape.add(animation, forKey: "animation")
            
        }
    }
    

