//
//  DataVc.swift
//  btnOnNav
//
//  Created by bhargava on 29/01/21.
//  Copyright © 2021 bhargava. All rights reserved.
//

import UIKit
import Alamofire
class DataVc: UIViewController ,UITableViewDelegate,UITableViewDataSource{
  let dataService = serviceUrlData()
    let serverResponse = servieResponse.success
   var dataArray = NSArray()
    @IBOutlet weak var tblView:UITableView!
let url = "https://jsonplaceholder.typicode.com/posts"
    let serviceUrl = ""
    override func viewDidLoad() {
        super.viewDidLoad()
        tblView.delegate = self
        tblView.dataSource = self
     
        dataService.getDataFromServer(baseUrl: url, serviceUrl: serviceUrl, encoding: PARAMETER_ENCODING.JSON_ENCODING, parameters: [:], headers: [:]) { [self] (dataFromServer, err) in
            switch serverResponse{
            case .success :
                self.dataArray = dataFromServer as! NSArray
                print(self.dataArray)
                DispatchQueue.main.async {
                    self.tblView.reloadData()
                }
                break
            case .failure:
                print("failure")
                break
            case .notConnectedToInternet:
                print("notConnectedToInternet")
                break
            }
            
        }
        // Do any additional setup after loading the view.
        addNibfile()
    }
   
    func addNibfile(){
        let nibName = UINib.init(nibName: "dataCell", bundle: nil)
        tblView.register(nibName, forCellReuseIdentifier: "dataCell")
    }
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return dataArray.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tblView.dequeueReusableCell(withIdentifier: "dataCell") as! dataCell
        let dataDict = dataArray[indexPath.row] as! NSDictionary
        cell.userIdLbl.text = "\(dataDict.value(forKey: "userId") as? Int ?? 0)"
        cell.IdLbl.text = "\(dataDict.value(forKey: "id") as? Int ?? 0)"
        cell.titleLbl.text = dataDict.value(forKey: "title") as? String
        cell.bodyLbl.text = dataDict.value(forKey: "body") as? String
        return cell
    }
    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destination.
        // Pass the selected object to the new view controller.
    }
    */

}
