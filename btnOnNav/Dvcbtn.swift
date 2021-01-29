//
//  Dvcbtn.swift
//  btnOnNav
//
//  Created by bhargava on 29/01/21.
//  Copyright © 2021 bhargava. All rights reserved.
//

import UIKit

class Dvcbtn: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }
    
    func addSlideMenuButton(){
           let btnShowMenu = UIButton(type: UIButton.ButtonType.system)
        btnShowMenu.setImage(UIImage(named:"home"), for: UIControl.State())
           btnShowMenu.frame = CGRect(x: 0, y: 0, width: 30, height: 30)
           btnShowMenu.addTarget(self, action: #selector(Dvcbtn.onSlideMenuButtonPressed(_:)), for: UIControl.Event.touchUpInside)
           btnShowMenu.tintColor = .black
           let customBarItem = UIBarButtonItem(customView: btnShowMenu)
           self.navigationItem.leftBarButtonItem = customBarItem;
       }
       
     
    @objc  func onSlideMenuButtonPressed(_ sender : UIButton){
       let story = UIStoryboard(name: "Main", bundle:nil)
       let vc = story.instantiateViewController(withIdentifier: "ViewController") as! ViewController
         let homeVc = UINavigationController(rootViewController: vc)
        self.navigationController?.pushViewController(vc, animated: true)
       //UIApplication.shared.windows.first?.rootViewController = vc
       //UIApplication.shared.windows.first?.makeKeyAndVisible()
    }

}
