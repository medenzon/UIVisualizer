//
//  Impact.swift
//  UIDemoTouchTracker
//
//  Created by Michael Edenzon on 4/6/18.
//  Copyright © 2018 Michael Edenzon. All rights reserved.
//

import Foundation
import UIKit

class Impact: UIView {
    
    private override init(frame: CGRect) {
        super.init(frame: frame)
        backgroundColor = UIColor.blue.withAlphaComponent(0.25)
        layer.borderColor = UIColor.blue.withAlphaComponent(0.75).cgColor
        layer.cornerRadius = 25
        layer.borderWidth = 2.5
    }
    
    convenience init(at point: CGPoint) {
        let radius: CGFloat = 25
        let x = point.x - radius
        let y = point.y - radius
        let width = radius * 2
        let height = radius * 2
        self.init(frame: CGRect(x: x, y: y, width: width, height: height))
    }
    
    convenience init(at point: CGPoint, color: UIColor) {
        self.init(at: point)
        backgroundColor = color.withAlphaComponent(0.25)
        layer.borderColor = color.withAlphaComponent(0.75).cgColor
    }
    
    func dismiss() {
        UIView.animate(withDuration: 2.0, delay: 0, options: .curveEaseIn, animations: {
            self.transform = CGAffineTransform(scaleX: 2.0, y: 2.0)
            self.alpha = 0.0
        }) { (true) in
            self.removeFromSuperview()
        }
    }
}
