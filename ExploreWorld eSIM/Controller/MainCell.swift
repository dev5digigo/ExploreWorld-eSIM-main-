//
//  MainCell.swift
//  ExploreWorld eSIM
//
//  Created by DREAMWORLD on 03/05/24.
//

import UIKit

class MainCell1: UITableViewCell {

    @IBOutlet weak var viewCountryIcon: UIView!
    @IBOutlet weak var lblCountryName: UILabel!
    @IBOutlet weak var imgCountryIc: UIImageView!
    
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)
        
        setdata()

        // Configure the view for the selected state
    }
    
    func setdata() {
        
        setviewBorder(view: viewCountryIcon)
        setRoundimgIc(ImgView: imgCountryIc)
    }

}

class MainCell2: UITableViewCell {
    
    @IBOutlet weak var viewTablecell: UIView!
    
    @IBOutlet weak var lblDays: UILabel!
    
    @IBOutlet weak var lblSMS: UILabel!
    @IBOutlet weak var lblMinute: UILabel!
    @IBOutlet weak var lblGB: UILabel!
    @IBOutlet weak var lblCountryCount: UILabel!
    @IBOutlet weak var lblPrice: UILabel!
    @IBOutlet weak var lblCountryName: UILabel!
    @IBOutlet weak var imgCountryIc: UIImageView!
    
    
    
    
    
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)
        
        setdata()
        
        
        // Configure the view for the selected state
    }
    
    
    func setdata() {
        setRoundimgIc(ImgView: imgCountryIc)
        setViewDegin(view: viewTablecell, cornerRadius: 25)
    }
}

class Maincell3: UITableViewCell {
    
    @IBOutlet weak var lblPortalPercentage: UILabel!
    @IBOutlet weak var lblCreatedDate: UILabel!
    @IBOutlet weak var lblPortalCharges: UILabel!
    @IBOutlet weak var lblPortalName: UILabel!
    @IBOutlet weak var lblId: UILabel!
    
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }
    
    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)
    }
}
