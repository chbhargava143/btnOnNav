//
//  HomeBtn.swift
//  btnOnNav
//
//  Created by bhargava on 29/01/21.
//  Copyright © 2021 bhargava. All rights reserved.
//

import Foundation
import UIKit
/*extension UIViewController{
    func addSlideMenuButton(BaseHomeVC : UIViewController){
           let btnShowMenu = UIButton(type: UIButton.ButtonType.system)
           btnShowMenu.setImage(self.defaultMenuImage(), for: UIControl.State())
           btnShowMenu.frame = CGRect(x: 0, y: 0, width: 30, height: 30)
           btnShowMenu.addTarget(self, action: #selector(BaseHomeVC.onSlideMenuButtonPressed(_:)), for: UIControl.Event.touchUpInside)
           btnShowMenu.tintColor = .white
           let customBarItem = UIBarButtonItem(customView: btnShowMenu)
           self.navigationItem.leftBarButtonItem = customBarItem
       }
    func defaultMenuImage() -> UIImage {
          var defaultMenuImage = UIImage()
          UIGraphicsBeginImageContextWithOptions(CGSize(width: 30, height: 22), false, 0.0)
          UIColor.black.setFill()
          UIBezierPath(rect: CGRect(x: 0, y: 3, width: 30, height: 1)).fill()
          UIBezierPath(rect: CGRect(x: 0, y: 10, width: 30, height: 1)).fill()
          UIBezierPath(rect: CGRect(x: 0, y: 17, width: 30, height: 1)).fill()
          UIColor.white.setFill()
          UIBezierPath(rect: CGRect(x: 0, y: 4, width: 30, height: 1)).fill()
          UIBezierPath(rect: CGRect(x: 0, y: 11,  width: 30, height: 1)).fill()
          UIBezierPath(rect: CGRect(x: 0, y: 18, width: 30, height: 1)).fill()
          defaultMenuImage = UIGraphicsGetImageFromCurrentImageContext()!
          UIGraphicsEndImageContext()
          defaultMenuImage.withTintColor(.white)
          return defaultMenuImage
      }
    @objc func onSlideMenuButtonPressed(_ sender : UIButton){
       let story = UIStoryboard(name: "Main", bundle:nil)
       let vc = story.instantiateViewController(withIdentifier: "ViewController") as! ViewController
       UIApplication.shared.windows.first?.rootViewController = vc
       UIApplication.shared.windows.first?.makeKeyAndVisible()
    }
 }/**/*/
