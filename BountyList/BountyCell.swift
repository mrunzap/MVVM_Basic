//
//  BountyCell.swift
//  BountyList
//
//  Created by donghun on 2020/07/17.
//  Copyright © 2020 donghun. All rights reserved.
//

import UIKit

class BountyCell: UITableViewCell {

    @IBOutlet weak var imgView: UIImageView!
    @IBOutlet weak var nameLabel: UILabel!
    @IBOutlet weak var bountyLabel: UILabel!
    
    
    //viewModel
    let viewModel = BountyViewModel()
    
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }
    func cellUpdateUI(info : BountyInfo){
        nameLabel.text = info.name
        bountyLabel.text = "\(info.bounty)"
        imgView.image = info.img
    }
}
