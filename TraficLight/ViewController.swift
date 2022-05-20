//
//  ViewController.swift
//  TraficLight
//
//  Created by Max on 18.05.2022.
//

import UIKit

enum ColorLight {
    case red, yellow, green
}

class ViewController: UIViewController {

    @IBOutlet weak var stackView: UIStackView!
    @IBOutlet weak var redView: UIView!
    @IBOutlet weak var yellowView: UIView!
    @IBOutlet weak var greenView: UIView!
    @IBOutlet weak var buttonStart: UIButton!
    
   private var curentColor = ColorLight.red
   private let lightOn: CGFloat = 1.0
   private let lightOff: CGFloat = 0.3
    
    override func viewDidLoad() {
        super.viewDidLoad()
        view.backgroundColor = .black
        self.redView.alpha = lightOff
        self.yellowView.alpha = lightOff
        self.greenView.alpha = lightOff
    }
   
    override func viewWillLayoutSubviews() {
        self.redView.layer.cornerRadius = self.redView.frame.width / 2
        self.yellowView.layer.cornerRadius = self.yellowView.frame.width / 2
        self.greenView.layer.cornerRadius = self.greenView.frame.width / 2
    }
    

    
    @IBAction func swichAction(_ sender: UIButton) {
     
        buttonStart.setTitle("NEXT", for: .normal)
        
        switch curentColor {
        case .red:
            greenView.alpha = lightOff
            redView.alpha = lightOn
            curentColor = .yellow
        case .yellow:
            redView.alpha = lightOff
            yellowView.alpha = lightOn
            curentColor = .green
        case .green:
            yellowView.alpha = lightOff
            greenView.alpha = lightOn
            curentColor = .red
        }
    }
}
