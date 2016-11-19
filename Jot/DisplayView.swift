//
//  DisplayView.swift
//  Jot
//
//  Created by Jim Campagno on 11/12/16.
//  Copyright © 2016 Gamesmith, LLC. All rights reserved.
//

import UIKit

final class DisplayView: UIView {
    
    @IBOutlet var contentView: UIView!
    
    override init(frame: CGRect) {
        super.init(frame: frame)
        commonInit()
    }
    
    required init?(coder aDecoder: NSCoder) {
        super.init(coder: aDecoder)
        commonInit()
    }
    
    
    private func commonInit() {
        Bundle.main.loadNibNamed("DisplayView", owner: self, options: nil)
        addSubview(contentView)
        contentView.constrainEdges(to: self)
    }

}
