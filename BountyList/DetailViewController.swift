//
//  DetailViewController.swift
//  BountyList
//
//  Created by donghun on 2020/07/17.
//  Copyright © 2020 donghun. All rights reserved.
//

import UIKit

class DetailViewController: UIViewController {

    @IBOutlet weak var detailBounty: UILabel!
    @IBOutlet weak var detailNameLabel: UILabel!
    @IBOutlet weak var detailImgView: UIImageView!
    
     let detailViewModel = DetailViewModel()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        updateUI()
        // Do any additional setup after loading the view.
    }
    
    func updateUI(){
        if let vc = detailViewModel.detailBountyList {
            detailImgView.image = vc.img
            detailNameLabel.text = vc.name
            detailBounty.text = "\(vc.bounty)"
        }
        
    }
}
