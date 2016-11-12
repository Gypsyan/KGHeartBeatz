//
//  KGHeartBeatz.swift
//  KGHeartBeatz
//
//  Created by Anantha Krishnan K G on 11/11/16.
//  Copyright © 2016 Ananth. All rights reserved.
//

import UIKit

@IBDesignable
open class KGHeartBeatz: UIView {
    
    fileprivate var innerLayer: CAShapeLayer = CAShapeLayer()
    
    fileprivate var animate:Bool = false
    
    internal var innerPath: UIBezierPath {
        
        // Create inner path (Tick mark or Cross mark)
        let path = UIBezierPath()
        let x:CGFloat = 1.0
        
        path.move(to: CGPoint(x:  (-10)*UIScreen.main.bounds.width, y: center.y))
        path.addLine(to: CGPoint(x: 0, y: center.y))
        
        var nextYAxis:CGFloat = center.y
        var nextXAxis:CGFloat = x + 8
        path.addLine(to: CGPoint(x: nextXAxis, y: nextYAxis))
        
        path.move(to: CGPoint(x:  nextXAxis, y: nextYAxis))
        path.addLine(to: CGPoint(x: nextXAxis + 12, y: nextYAxis-50))
        
        nextYAxis = nextYAxis-50
        nextXAxis = nextXAxis + 12
        
        path.move(to: CGPoint(x:  nextXAxis, y: nextYAxis))
        path.addLine(to: CGPoint(x: nextXAxis+14, y: nextYAxis+150))
        
        nextYAxis = nextYAxis+150
        nextXAxis = nextXAxis+14
        
        path.move(to: CGPoint(x:  nextXAxis, y: nextYAxis))
        path.addLine(to: CGPoint(x: nextXAxis+16, y: nextYAxis-210))
        
        nextYAxis = nextYAxis-210
        nextXAxis = nextXAxis+16
        
        path.move(to: CGPoint(x:  nextXAxis, y: nextYAxis))
        path.addLine(to: CGPoint(x: nextXAxis+18, y: nextYAxis+110))
        
        nextYAxis = nextYAxis+110
        nextXAxis = nextXAxis+18
        
        path.move(to: CGPoint(x:  nextXAxis, y: nextYAxis))
        path.addLine(to: CGPoint(x: nextXAxis+20, y: center.y))
        
        nextYAxis = center.y
        nextXAxis = nextXAxis+20
        
        path.move(to: CGPoint(x:  nextXAxis, y: nextYAxis))
        
        path.addLine(to: CGPoint(x: 10 * UIScreen.main.bounds.width, y: center.y))
        
        nextYAxis = center.y
        nextXAxis = nextXAxis+UIScreen.main.bounds.width
        
        return path
    }
    
    fileprivate func setUpLayers() {
        // Set frames, line widths and paths for layers
        
        innerLayer.frame = bounds
        innerLayer.lineWidth = 1.0
        innerLayer.path = innerPath.cgPath
        innerLayer.strokeColor = UIColor.red.cgColor
    }
    
    func start() {
        innerLayer.fillColor = UIColor.red.cgColor
        setUpLayers()
        layer.addSublayer(innerLayer)
        
    }
    
    public required init?(coder aDecoder: NSCoder) {
        super.init(coder: aDecoder)
    }
    
    override open func layoutSubviews() {
        super.layoutSubviews()
        
        
        if (UIDeviceOrientationIsLandscape(UIDevice.current.orientation)) {
            self.frame = CGRect(origin: CGPoint(x: UIScreen.main.bounds.width/2,y :0), size: CGSize(width: UIScreen.main.bounds.height/2, height: 1.0))
        }
        
        if (UIDeviceOrientationIsPortrait(UIDevice.current.orientation)) {
            self.frame = CGRect(origin: CGPoint(x: 0,y :UIScreen.main.bounds.height/2), size: CGSize(width: UIScreen.main.bounds.width/2, height:1.0))
        }
        
        if animate {
            animate = false
            startAnimationNow()
        }
    }
    public convenience init(){
        
        
        self.init(frame:  CGRect(x: 0, y: 0, width: UIScreen.main.bounds.width, height: 1))
    }
    
    public override init(frame: CGRect) {
        super.init(frame: frame)
        start()
    }
    public func startAnimation(){
        animate = true;
        layoutSubviews()
    }
    
    fileprivate func startAnimationNow() {
        
        self.layer.frame = CGRect(origin: CGPoint(x: -100, y :UIScreen.main.bounds.height/2), size: CGSize(width: 0, height: self.frame.size.height))
        
        UIView.animateKeyframes(withDuration: 3.0, delay: 0, options: [], animations: {
            
            UIView.addKeyframe(withRelativeStartTime: 0, relativeDuration: 1.0, animations: {
                self.layer.frame = CGRect(x:2*UIScreen.main.bounds.width, y: UIScreen.main.bounds.height/2, width: UIScreen.main.bounds.width, height: self.frame.size.height)
            })
            
        }) { (completed) in
            self.startAnimation()
        }
        
        
    }
    
    
}
