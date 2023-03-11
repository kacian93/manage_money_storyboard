//
//  GraphicMoneyController.swift
//  manageMoneyStoryboard
//
//  Created by PC156 on 2023/03/10.
//

import Foundation
import UIKit
class GraphicMoneyController : UIViewController, UITableViewDelegate, UITableViewDataSource{
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return 0
    }
    
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        return UITableViewCell()
    }
    
    var aDegree : CGFloat = 0
    @IBOutlet var tableView : UITableView!
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        let circlePath = UIBezierPath(arcCenter: view.center, radius: 90, startAngle: aDegree*270, endAngle: aDegree * (270+360), clockwise: true)
        let circleLayer = CAShapeLayer()
        circleLayer.path = circlePath.cgPath
        circleLayer.fillColor = UIColor.clear.cgColor
        circleLayer.strokeColor = CGColor.init(red: 255, green: 0, blue: 0, alpha: 2)
        circleLayer.lineWidth = 40
        view.layer.addSublayer(circleLayer)
        
        
    }
}
