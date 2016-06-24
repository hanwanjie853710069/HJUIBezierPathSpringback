//
//  ViewController.swift
//  WangYi
//
//  Created by 王木木 on 16/6/21.
//  Copyright © 2016年 王木木. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
//    var viewH:HJView! = nil
    override func viewDidLoad() {
        
        
        
        super.viewDidLoad()
        
        //        self.view.backgroundColor = UIColor.whiteColor()
        //
        //        let pre = creatUIProgressView(CGRectMake(0, 100, 300, 20) , progress: 0.0)
        //
        //        self.view.addSubview(pre)
        
        
//        viewH = HJView.init(frame: CGRectMake(0, 100, UIScreen.mainScreen().bounds.size.width, 500))
//        viewH.backgroundColor = UIColor.brownColor()
//        self.view.addSubview(viewH)
//        
        self.performSelector(#selector(self.touch), withObject: self, afterDelay: 0.1)
        
        //
        //        let btn = UIButton.init(frame: CGRectMake(130, 350, 100, 100))
        //        btn.backgroundColor = UIColor.redColor()
        //        btn.cornerRadius(50)
        //        viewH.addSubview(btn)
        
        
        //        var path = UIBezierPath()
        //        path.addArcWithCenter(view.center, radius: 100, startAngle: 0, endAngle: CGFloat(M_PI), clockwise: true)
        //        path.closePath()
        //        var mask = CAShapeLayer()
        //        mask.path = path.CGPath
        //        view.layer.mask = mask
        //
        
        
        //二维码中空效果
        //        let imageView = UIImageView(image: UIImage(named: "avatar"))
        //        imageView.center = view.center
        //        view.addSubview(imageView)
        //
        //        let maskLayer = CALayer()
        //        maskLayer.frame = view.frame
        //        maskLayer.backgroundColor = UIColor.blackColor().CGColor
        //        maskLayer.opacity = 0.6
        //        view.layer.addSublayer(maskLayer)
        //
        //        let rectSize = CGFloat(100)
        //        let shapeLayer = CAShapeLayer()
        //        shapeLayer.frame = view.layer.frame
        //        var path = UIBezierPath(rect: CGRectMake((view.frame.width-rectSize)/2, (view.frame.height-rectSize)/2, rectSize, rectSize))
        //        path.appendPath(UIBezierPath(rect: view.layer.frame))
        //        shapeLayer.path = path.CGPath
        //        shapeLayer.fillRule = kCAFillRuleEvenOdd
        //
        //        maskLayer.mask = shapeLayer
        
        
        
        
        
    }
    
    func touch(){
        
//        viewH.value = viewH.value  - 2
        
        
        self.performSelector(#selector(self.touch), withObject: self, afterDelay: 0.1)
    }
    
    func hudu(){
        
        //        let btn = UIButton.init(frame: CGRectMake(100, 100, 100, 100))
        //        btn.backgroundColor = UIColor.redColor()
        //        btn.cornerRadius(50)
        //        self.view.addSubview(btn)
        
        //     let viewH = HJView.init(frame: CGRectMake(0, 100, UIScreen.mainScreen().bounds.size.width, 500))
        //        viewH.backgroundColor = UIColor.brownColor()
        //self.view.addSubview(viewH)
        //
        //        print(CGFloat(270*M_PI/180))
        //        print(M_PI)
        
        //        let context =  UIGraphicsGetCurrentContext()
        //
        //
        //        let rect = CGRectMake(0, 0, 100, 100)
        //
        //        UIGraphicsBeginImageContext(rect.size);
        //
        //        //角度=弧度除以π再乘以180
        //        CGContextSetStrokeColorWithColor(context, UIColor.redColor().CGColor)
        //
        //        CGContextMoveToPoint(context, 0, 0)
        //
        //        CGContextAddLineToPoint(context, 0, 350)
        //
        //        CGContextAddArcToPoint(context, UIScreen.mainScreen().bounds.size.width/2, 400,
        //                               UIScreen.mainScreen().bounds.size.width, 350,
        //                               UIScreen.mainScreen().bounds.size.width/2)
        //
        //        CGContextAddLineToPoint(context, UIScreen.mainScreen().bounds.size.width, 350)
        //        CGContextAddLineToPoint(context, UIScreen.mainScreen().bounds.size.width, 0)
        //
        //        CGContextDrawPath(context, .FillStroke)
        //        //画弧
        //        CGContextStrokePath(context)//关闭路径
        //        CGContextFillRect(context, rect);
        //
        //        let imgae = UIGraphicsGetImageFromCurrentImageContext()
        //
        //        UIGraphicsEndImageContext()
        
        let rect = CGRectMake(0, 0, 100, 100)
        
        UIGraphicsBeginImageContext(rect.size);
        
        let context = UIGraphicsGetCurrentContext();
        
        CGContextMoveToPoint(context, 100, 50)
        
        CGContextAddLineToPoint(context, 100, 100)
        
        
        
        CGContextSetFillColorWithColor(context, UIColor.purpleColor().CGColor);
        
        //        let font = UIFont.boldSystemFontOfSize(18.0)
        
        CGContextFillRect(context, rect);
        
        let imgae = UIGraphicsGetImageFromCurrentImageContext();
        
        UIGraphicsEndImageContext();
        
        
        let imagev = UIImageView.init(image: imgae)
        
        imagev.backgroundColor = UIColor.yellowColor()
        
        imagev.frame = CGRectMake(0, 0, 300, 300)
        
        self.view.addSubview(imagev)
    }
    
}

// MARK: - UIButton 扩展
extension UIButton{
    
    func cornerRadius(cornerRadius:CGFloat){
        
        self.layer.cornerRadius = cornerRadius
        
        self.layer.masksToBounds = true
    }
    
}

// MARK: - UIImageView 扩展
extension UIImageView{
    
}

// MARK: - UIImage扩展
extension UIImage{
    
    
    
}

// MARK: - UIProgressView 进度条扩展
extension UIProgressView{
    
    
}

class Tools: NSObject {
    
    
    
}

/*
/// UIView 继承
class HJView: UIView {
    
    var value: CGFloat = 400 {
        didSet {
            self.setNeedsDisplay()
        }
    }
    
    override func drawRect(rect: CGRect) {
        
        super.drawRect(rect)
        
        //        //画圆
        //        CGContextAddEllipseInRect(context, CGRectMake(50,50,100,100));
        //        //画圆
        //        CGContextStrokePath(context) //关闭路径
        //通过画弧画圆 //弧度=角度乘以π后再除以180
        //角度=弧度除以π再乘以180
        
        //        //设置画笔颜色
        //        CGContextAddArc(context, 100, 50, 100, 0, CGFloat(M_PI/2), 0)
        
        
        
        //使用path画图
        //        let p1:CGMutablePathRef = CGPathCreateMutable();
        //
        //        CGPathMoveToPoint(p1, nil, 50, 250)
        //
        //        CGPathAddLineToPoint(p1, nil, 50, 450)
        //               var transform = CGAffineTransformMakeTranslation(20, 20);
        //
        ////        CGContextAddArcToPoint(context, 50, 450, 100, 450, 10)
        //
        //        CGPathAddArcToPoint(p1, &transform, 50, 450, 100, 450, 90)
        //
        //        CGPathAddLineToPoint(p1, nil, 100, 450)
        //
        //        CGPathAddLineToPoint(p1, nil, 100, 250)
        
        
        //       var transform = CGAffineTransformMakeTranslation(50, 50);
        //
        //        CGPathAddArc(p1,&transform, UIScreen.mainScreen().bounds.size.width/2, 100, UIScreen.mainScreen().bounds.size.width, 0,CGFloat( M_PI), false)
        //        CGPathAddLineToPoint(p1, nil, UIScreen.mainScreen().bounds.size.width/2,  100)
        
        
        //        CGContextAddPath(context, p1)
        
        //        let context:CGContextRef =  UIGraphicsGetCurrentContext()!;
        //
        //        CGContextSetStrokeColorWithColor(context, UIColor.yellowColor().CGColor)
        //
        //        CGContextSetFillColorWithColor(context, UIColor.purpleColor().CGColor)
        ////
        //        CGContextMoveToPoint(context, 0, 0)
        //
        //        CGContextAddLineToPoint(context, 0, 350)
        //
        //        CGContextAddArcToPoint(context, UIScreen.mainScreen().bounds.size.width/2, 390,
        //                               UIScreen.mainScreen().bounds.size.width, 350,
        //                               UIScreen.mainScreen().bounds.size.width/2)
        //
        //        CGContextAddArcToPoint(context, UIScreen.mainScreen().bounds.size.width/2, 400,
        //                               UIScreen.mainScreen().bounds.size.width, 350,
        //                               UIScreen.mainScreen().bounds.size.width/2)
        //
        //        CGContextAddLineToPoint(context, UIScreen.mainScreen().bounds.size.width, 350)
        //
        //        CGContextAddLineToPoint(context, UIScreen.mainScreen().bounds.size.width, 0)
        //
        //        CGContextAddLineToPoint(context, 0, 0)
        //
        //
        ////        CGContextAddArc(context, 100, 100, 50, 0, CGFloat(270*M_PI/180), 0) //画弧
        //
        //
        //        CGContextDrawPath(context, .FillStroke)
        //        //画弧
        //        CGContextStrokePath(context)//关闭路径
        
        //画一条线
        //        var myBezier = UIBezierPath()
        //        myBezier.moveToPoint(CGPoint(x: 100, y: 100))
        //        myBezier.addLineToPoint(CGPoint(x: 200, y: 100))
        //        UIColor.orangeColor().setStroke()
        //        myBezier.stroke()
        
        //两条线
        //        var myBezier = UIBezierPath()
        //        myBezier.moveToPoint(CGPoint(x: 100, y: 100))
        //        myBezier.addLineToPoint(CGPoint(x: 200, y: 100))
        //        myBezier.moveToPoint(CGPoint(x: 100, y: 200))
        //        myBezier.addLineToPoint(CGPoint(x: 200, y: 200))
        //        UIColor.orangeColor().setStroke()
        //        myBezier.stroke()
        
        /// 画一个圆弧
        //stroke 是画线，fill 是填充。所以实心圆可以这么画
        
        print(index)
        let bezier1 = UIBezierPath()
        UIColor.yellowColor().setFill()
        UIColor.purpleColor().setStroke()
        bezier1.lineWidth = 5
        bezier1.moveToPoint(CGPointMake(0, 0))
        bezier1.addLineToPoint(CGPointMake(0, 300))
        bezier1.addQuadCurveToPoint(CGPointMake(screenWidth, 300), controlPoint: CGPointMake(screenWidth/2, CGFloat(value)))
        bezier1.addLineToPoint(CGPointMake(screenWidth, 0))
        bezier1.stroke()
        bezier1.fill()
        
    }
    
}

*/

import Foundation

///  创建 UIProgressView
func creatUIProgressView(frame:CGRect, progress:Float)->UIProgressView{
    
    let progressView=UIProgressView(progressViewStyle:UIProgressViewStyle.Default)
    
    progressView.frame = frame
    
    progressView.progress=progress //默认进度50%
    
    progressView.setProgress(0.8,animated:true)
    
    progressView.progressTintColor=UIColor.greenColor()  //已有进度颜色
    
    progressView.trackTintColor=UIColor.blueColor()  //剩余进度颜色（即进度槽颜色）
    
    return progressView
    
}

///获取一张图片
func getColorImageWithColor(color:UIColor) ->(UIImage){
    
    let rect = CGRectMake(0,
                          0,
                          UIScreen.mainScreen().bounds.size.width,
                          UIScreen.mainScreen().bounds.size.width)
    
    UIGraphicsBeginImageContext(rect.size);
    
    let context = UIGraphicsGetCurrentContext();
    
    CGContextSetFillColorWithColor(context, color.CGColor);
    
    CGContextFillRect(context, rect);
    
    let img = UIGraphicsGetImageFromCurrentImageContext();
    
    UIGraphicsEndImageContext();
    
    return img;
    
}

let screenHeight = UIScreen.mainScreen().bounds.size.height


let screenWidth = UIScreen.mainScreen().bounds.size.width

