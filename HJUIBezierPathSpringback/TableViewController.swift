//
//  TableViewController.swift
//  WangYi
//
//  Created by 王木木 on 16/6/24.
//  Copyright © 2016年 王木木. All rights reserved.
//

import UIKit

class TableViewController: UITableViewController {
    
    var viewH:HJArcSpringback! = nil
    
    let heardHeard:CGFloat = 200
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        viewH = HJArcSpringback.init(frame: CGRectMake(0,
            100,
            UIScreen.mainScreen().bounds.size.width,
            200))
        
        viewH.backgroundColor = UIColor.brownColor()
        
        self.view.backgroundColor = UIColor.yellowColor()
        
        let backView = UIView.init(frame: CGRectMake(0,
            200,
            screenWidth,
            screenHeight))
        
        backView.backgroundColor = UIColor.whiteColor()
        
        self.view.addSubview(backView)
        
    }
    
    override func tableView(tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        // #warning Incomplete implementation, return the number of rows
        return 1
    }
    
    
    override func tableView(tableView: UITableView, cellForRowAtIndexPath indexPath: NSIndexPath) -> UITableViewCell {
        
        var cell = tableView.dequeueReusableCellWithIdentifier("reuseIdentifier")
        
        if cell == nil {
            cell = UITableViewCell.init(style: .Default, reuseIdentifier: "reuseIdentifier")
        }
        
        return cell!
    }
    
    override func tableView(tableView: UITableView, heightForHeaderInSection section: Int) -> CGFloat {
        
        return heardHeard
        
    }
    
    override func tableView(tableView: UITableView, viewForHeaderInSection section: Int) -> UIView? {
        
        return self.viewH
        
    }
    
    override func scrollViewDidScroll(scrollView: UIScrollView) {
        
        viewH.value = heardHeard - 20
        
        if self.tableView.contentOffset.y > 0 {
            
            viewH.value = viewH.value  - (self.tableView.contentOffset.y * 2)
            
        }else{
            
            viewH.value = viewH.value  - self.tableView.contentOffset.y
        }
    }
    
}


class HJArcSpringback: UIView {
    
    var value: CGFloat = 180 {
        
        didSet {
            
            self.setNeedsDisplay()
            
        }
        
    }
    
    override func drawRect(rect: CGRect) {
        
        super.drawRect(rect)
        
        let bezier = UIBezierPath()
        
        UIColor.yellowColor().setFill()
        
        UIColor.purpleColor().setStroke()
        
        bezier.lineWidth = 5
        
        bezier.moveToPoint(CGPointMake(0, 0))
        
        bezier.addLineToPoint(CGPointMake(0, 100))
        
        bezier.addQuadCurveToPoint(CGPointMake(screenWidth, 100),
                                   controlPoint: CGPointMake(screenWidth/2, CGFloat(value)))
        
        bezier.addLineToPoint(CGPointMake(screenWidth, 0))
        
        bezier.stroke()
        
        bezier.fill()
        
    }
    
}
