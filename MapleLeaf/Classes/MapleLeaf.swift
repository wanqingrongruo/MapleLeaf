//
//  MapleLeaf.swift
//  Created on 2020/8/17
//  Description <#文件描述#>

//  Copyright © 2020 Huami inc. All rights reserved.
//  @author zhengwenxiang(zhengwenxiang@huami.com)  

import Foundation
import UIKit

public class BlinkingLabel: UILabel {
    
    public func startBlinking() {
        let options: UIView.AnimationOptions = [.repeat, .autoreverse]
        UIView.animate(withDuration: 0.25, delay: 0, options: options, animations: {
            self.alpha = 0
        }, completion: nil)
    }
    
    public func stopBlinking() {
        alpha = 1
        layer.removeAllAnimations()
    }
}
