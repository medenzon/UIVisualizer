//
//  InteractiveView.swift
//  UIDemoTouchTracker
//
//  Created by Michael Edenzon on 4/2/18.
//  Copyright © 2018 Michael Edenzon. All rights reserved.
//

import Foundation
import UIKit

class InteractiveView: UIView {
    
    var impact: Impact?
    
    override init(frame: CGRect) {
        super.init(frame: frame)
    }
    
    override func touchesBegan(_ touches: Set<UITouch>, with event: UIEvent?) {
        impact = Impact(at: touches.first!.preciseLocation(in: self))
    }
    
    override func touchesMoved(_ touches: Set<UITouch>, with event: UIEvent?) {
        impact?.center = touches.first!.preciseLocation(in: self)
    }
    
    override func touchesEnded(_ touches: Set<UITouch>, with event: UIEvent?) {
        
    }
    
    required init?(coder aDecoder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
}
