//
//  serviceDataa.swift
//  btnOnNav
//
//  Created by bhargava on 29/01/21.
//  Copyright © 2021 bhargava. All rights reserved.
//

import Alamofire
import UIKit
public struct  PARAMETER_ENCODING  {
    
    static let URL_ENCODING = "URLEncoding"
    static let JSON_ENCODING = "JSONEncoding"
}
enum ResponseStatusCode: Int {
    case success = 200
}
enum servieResponse {
    case success 
    case failure
    case notConnectedToInternet
}
class serviceUrlData:NSObject{
    func getDataFromServer(baseUrl:String,serviceUrl:String,encoding:String,parameters:NSDictionary,headers:HTTPHeaders,completionHandler : @escaping (_ response :AnyObject ,_ error : String)->Void){
        AF.request(baseUrl+serviceUrl,method: .get,encoding: JSONEncoding.default,headers: headers).responseJSON { (dataResponse) in
            guard let urlData = dataResponse.value else {return}
            switch dataResponse.result{
            case .success(_):
                completionHandler(urlData as AnyObject,"")
                //print(dataResponse.value ?? "")
                break
            case .failure(let error):
                let temp:[AnyObject] = []
                print("failure")
                completionHandler( temp as AnyObject, (error as NSError) as! String)
                break
            }
        }
    }
}
