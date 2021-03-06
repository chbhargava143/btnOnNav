//
//  avcbtn.swift
//  btnOnNav
//
//  Created by bhargava on 29/01/21.
//  Copyright © 2021 bhargava. All rights reserved.
//

import UIKit

class avcbtn: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }
    
    func addSlideMenuButton(){
           let btnShowMenu = UIButton(type: UIButton.ButtonType.roundedRect)
       // btnShowMenu.titleLabel?.text = "Home"
        //btnShowMenu.titleLabel?.textColor = UIColor.black
        btnShowMenu.setImage(UIImage(named:"home"), for: UIControl.State())
           btnShowMenu.frame = CGRect(x: 0, y: 0, width: 30, height: 30)
           btnShowMenu.addTarget(self, action: #selector(avcbtn.onSlideMenuButtonPressed(_:)), for: UIControl.Event.touchUpInside)
           btnShowMenu.tintColor = .black
           let customBarItem = UIBarButtonItem(customView: btnShowMenu)
           self.navigationItem.leftBarButtonItem = customBarItem
        
       }
       
     
    @objc  func onSlideMenuButtonPressed(_ sender : UIButton){
       let story = UIStoryboard(name: "Main", bundle:nil)
       let vc = story.instantiateViewController(withIdentifier: "ViewController") as! ViewController
       let homeVc = UINavigationController(rootViewController: vc)
        self.navigationController?.pushViewController(vc, animated: true)
//       //UIApplication.shared.windows.first?.rootViewController = vc
//       //UIApplication.shared.windows.first?.makeKeyAndVisible()
        
    }
    func root(){
        let storyBoard : UIStoryboard = UIStoryboard(name: "Main", bundle:nil)
        let newViewController = storyBoard.instantiateViewController(withIdentifier: "ViewController") as! ViewController
        let navigationController = UINavigationController(rootViewController: newViewController)
        let appdelegate = UIApplication.shared.delegate as! AppDelegate
        appdelegate.window!.rootViewController = navigationController
    }

}
