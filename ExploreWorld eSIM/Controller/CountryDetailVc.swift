//
//  CountryDetailVc.swift
//  ExploreWorld eSIM
//
//  Created by DREAMWORLD on 04/05/24.
//

import UIKit
import Alamofire

class CountryDetailVc: UIViewController {

    @IBOutlet weak var btnValedity: UIButton!
    @IBOutlet weak var btnDataPlan: UIButton!
    @IBOutlet weak var btnCountry: UIButton!
    @IBOutlet weak var tblNoti: UITableView!
    
//    let arrImgCountry = ["Ic_Georgia","Ic_Armenia","Ic_Kazakhstan","Ic_UK"]
//    let arrCountryName = ["Georgia","Armenia","Kazakhstan","United Kingdom"]
//    let arrPrice = ["$10","$20","$40","$50"]
//    let arrCountryCount = ["1 Country","1 Country","1 Country","1 Country"]
//    let arrGB = ["3 GB","10 GB","18 GB","30 GB"]
//    let arrMinutes = ["100 min","300 min","500 min","1000 min"]
//    let arrSMS = ["50 sms","150 sms","250 sms","100 sms"]
//    let arrDays = ["7 Days","1 month","2 month","1 month"]
    
    
    var arrNoti =  [NotificationData]()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        getList()
    
        setdata()

        // Do any additional setup after loading the view.
    }
    
    func setdata() {
        setbtnDesign(btn: btnValedity, borderWidth: 1, borderColor: UIColor(named: "BorderColour3"), cornerRadius: btnValedity.frame.height/2)
        setbtnDesign(btn: btnDataPlan, borderWidth: 1, borderColor: UIColor(named: "BorderColour3"), cornerRadius: btnDataPlan.frame.height/2)
        setbtnDesign(btn: btnCountry, borderWidth: 1, borderColor: UIColor(named: "BorderColour3"), cornerRadius: btnCountry.frame.height/2)
    }
    
    
    
    
    
}

extension CountryDetailVc{
    func getList() {
        let url = "http://145.239.253.21/pamar/easysim_admin/index.php/Notification/getnotification"
        
        let params = ["mobile":"+917203939884"] as [String : Any]
        // so we have made params for parameter and if we have to define header here
        
        
        
        // this is the method we use to make api call with post or get method
        AF.request(url, method: .post, parameters: params, encoding: URLEncoding.default, headers:nil, interceptor: nil)
            .response{ resp in
                print("res: ",resp.result)
                switch resp.result{
                case .success(let data):
                    do{
                        // to get data converted from bytes to jason
                        let jsonData = try JSONDecoder().decode(NotificationResponseModel.self, from: data!)
                        print(jsonData)
                        
                        if ((jsonData.data?.count ?? 0) > 0){
                            self.arrNoti = jsonData.data ?? []
                            self.tblNoti.reloadData()
                        }
                        
                    } catch {
                        print(error.localizedDescription)
                        print(error)
                    }
                case .failure(let error):
                    print(error.localizedDescription)  //in case of failure
                }
            }
    }
}
        


extension CountryDetailVc: UITableViewDelegate {
    
}

extension CountryDetailVc: UITableViewDataSource {
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return self.arrNoti.count//arrCountryName.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "MainCell2", for: indexPath) as! MainCell2
        let data = self.arrNoti[indexPath.row]
        
       // cell.imgCountryIc.image =  UIImage(named: self.arrImgCountry[indexPath.row])
        cell.lblCountryName.text = data.description//self.arrCountryName[indexPath.row]
        cell.lblCountryCount.text = data.title//self.arrCountryCount[indexPath.row]
        cell.lblMinute.text = data.datetime//self.arrMinutes[indexPath.row]
//        cell.lblPrice.text = self.arrPrice[indexPath.row]
//        cell.lblDays.text = self.arrDays[indexPath.row]
//        cell.lblSMS.text = self.arrSMS[indexPath.row]
//        cell.lblGB.text = self.arrGB[indexPath.row]
        return cell
    }
    
    
}
