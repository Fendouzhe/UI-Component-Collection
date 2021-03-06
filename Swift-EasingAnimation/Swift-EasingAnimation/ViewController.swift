//
//  ViewController.swift
//  Swift-EasingAnimation
//
//  Created by LeiLuRong on 15/10/21.
//
//

import UIKit

class ViewController: UIViewController {

    override func viewDidLoad() {
        
        super.viewDidLoad()
    
        frameValueAnimation()
        
        pointValueAnimation()
        
        sizeValueAnimation()
    }
    
    /**
    关键帧动画例子
    */
    func frameValueAnimation() {
    
        // 创建easing
        let easingValue = EasingValue(withFunction: .elasticEaseInOut, frameCount: 120)
        
        // 创建关键帧动画
        let keyframeAnimation      = CAKeyframeAnimation(keyPath: "transform.rotation.z")
        keyframeAnimation.values   = easingValue.frameValueWith(fromValue: 0, toValue: M_PI)
        keyframeAnimation.duration = 4
        
        // 创建layer + 执行动画
        let layer         = CALayer()
        layer.frame       = CGRect(x: 60, y: 60, width: 100, height: 100)
        layer.borderWidth = 1
        layer.transform   = CATransform3DMakeRotation(CGFloat(M_PI), 0, 0, 1)
        layer.add(keyframeAnimation, forKey: nil)
        view.layer.addSublayer(layer)
    }
    
    /**
    关键帧点动画例子
    */
    func pointValueAnimation() {
        
        // 创建layer
        let layer         = CALayer()
        layer.frame       = CGRect(x: 60, y: 60, width: 100, height: 100)
        layer.borderWidth = 1
        
        // 创建easing
        let easingValue = ComplexEasingValue(withFunctionA: .linearInterpolation, FunctionB: .bounceEaseOut, frameCount: 120)
        
        // 创建关键帧动画
        let keyframeAnimation      = CAKeyframeAnimation(keyPath: "position")
        keyframeAnimation.values   = easingValue.pointValueWith(fromPoint: layer.position, toPoint: view.center)
        keyframeAnimation.duration = 2
        layer.position             = view.center
        
        // 执行动画
        layer.add(keyframeAnimation, forKey: nil)
        view.layer.addSublayer(layer)
    }
    
    /**
    关键帧尺寸动画例子
    */
    func sizeValueAnimation() {
        
        // 创建layer
        let layer             = CALayer()
        layer.frame           = CGRect(x: 60, y: 60, width: 100, height: 100)
        layer.backgroundColor = UIColor.red.withAlphaComponent(0.5).cgColor
        
        // 创建easing
        let easingValue = EasingValue(withFunction: .elasticEaseInOut, frameCount: 120)
        
        // 创建关键帧动画
        let keyframeAnimation      = CAKeyframeAnimation(keyPath: "bounds.size")
        keyframeAnimation.values   = easingValue.sizeValueWith(fromSize: layer.bounds.size, toSize: CGSize(width: 150, height: 150))
        keyframeAnimation.duration = 4
        layer.bounds.size          = CGSize(width: 150, height: 150)
        
        // 执行动画
        layer.add(keyframeAnimation, forKey: nil)
        view.layer.addSublayer(layer)
    }
}

