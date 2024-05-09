//
//  CountryVc.swift
//  ExploreWorld eSIM
//
//  Created by DREAMWORLD on 03/05/24.
//

import UIKit

class CountryVc: UIViewController {


    @IBOutlet weak var lblCountry: UILabel!
    @IBOutlet weak var btnFAQ: UIButton!
    
    var loginflag = true
    
    let arrTableCellName = ["United States","United Kingdom","United Arab Emirates","Switzerland","Spain","Poland","Ireland","Greece","Finland","Turkey"]
    let arrTableCellImage = ["Ic_Unitedstates","Ic_UK","Ic_Uae","Ic_Switzerland","Ic_Spain","Ic_Poland","Ic_Ireland","Ic_Greece","Ic_Finland","Ic_Turkey"]
    let arrCollectionCountryName = ["United States","United Kingdom","United Arab Emirates"]
    let arrCollectionCountryFlag = ["Flag_Usa","Flag_Uk","Flag_Uae"]
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        setdata()
        

        // Do any additional setup after loading the view.
    }
    
    @IBAction func btnPressedLogout(_ sender: Any) {
        // Clear isLoggedIn key
        UserDefaults.standard.set(false, forKey: "isLoggedIn")
        loginflag = false
        navigationController?.popToRootViewController(animated: true)
    }
    
    func setdata() {
        setbtnDesign(btn: btnFAQ, cornerRadius: 10)
        setlblDesign(lbl: lblCountry)
    }
    

}

extension CountryVc : UITableViewDelegate{
    
}

extension CountryVc : UITableViewDataSource {
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return arrTableCellName.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "MainCell1", for: indexPath) as! MainCell1
        cell.lblCountryName.text = self.arrTableCellName[indexPath.row]
        cell.imgCountryIc.image = UIImage(named: self.arrTableCellImage[indexPath.row])
        return cell
    }
}

extension CountryVc : UICollectionViewDelegate {
    
}
extension CountryVc : UICollectionViewDataSource {
    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        return arrCollectionCountryName.count
    }
    
    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        let CollectionCell = collectionView.dequeueReusableCell(withReuseIdentifier: "PopCountryCollectionCell", for: indexPath) as! PopCountryCollectionCell
        CollectionCell.imgCountryCollection.image = UIImage(named: self.arrCollectionCountryFlag[indexPath.row])
        CollectionCell.lblCountryNameCollection.text = self.arrCollectionCountryName[indexPath.row]
        return CollectionCell
    }
    
    
}

