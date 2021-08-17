//
//  GradientView2.swift
//  CryptoMiner
//
//  Created by Jakub Konkol on 16/08/2021.
//

import UIKit
@IBDesignable
class GradientView2: UIView {
    @IBInspectable var topColor: UIColor = #colorLiteral(red: 0.8549019694, green: 0.250980407, blue: 0.4784313738, alpha: 1)
    @IBInspectable var bottomColor: UIColor = #colorLiteral(red: 0.9568627477, green: 0.6588235497, blue: 0.5450980663, alpha: 1)
    
    var startPointX: CGFloat = 0
    var startPointY : CGFloat = 0
    var endPointX : CGFloat = 1
    var endPointY : CGFloat = 1
    
    override func layoutSubviews() {
        let gradientLayer = CAGradientLayer()
        gradientLayer.colors = [topColor.cgColor, bottomColor.cgColor]
        gradientLayer.startPoint = CGPoint(x: startPointX, y: startPointY)
        gradientLayer.endPoint = CGPoint(x: endPointX, y: endPointY)
        gradientLayer.frame = self.bounds
        self.layer.insertSublayer(gradientLayer, at: 0)
    }
}
