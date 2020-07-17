//
//  BountyViewController.swift
//  BountyList
//
//  Created by donghun on 2020/07/17.
//  Copyright © 2020 donghun. All rights reserved.
//

import UIKit

class BountyViewController: UIViewController {

    let bountyViewModel = BountyViewModel()
    
    override func viewDidLoad() {
        super.viewDidLoad()

    }

    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        
        if  segue.identifier == "showDetail" {
             let detailVC = segue.destination as? DetailViewController
                if let index =  sender as? Int {

                    detailVC?.detailViewModel.detailBountyList = bountyViewModel.getBountyInfo(at: index)
                }
        }
    }


}
// 업무 분담.!!
// 일반 View에서 테이블 사용할려면 그 쪽 담당자 불러야함.
extension BountyViewController : UITableViewDataSource {
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return bountyViewModel.numberOfRowsInSection
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        guard let cell = tableView.dequeueReusableCell(withIdentifier: "bountyCell", for: indexPath) as? BountyCell else{
            return UITableViewCell()
        }
        let info = bountyViewModel.getBountyInfo(at: indexPath.row)
        cell.cellUpdateUI(info : info)
       
        
        return cell
    }
    
    
}

extension BountyViewController : UITableViewDelegate {
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        self.performSegue(withIdentifier: "showDetail", sender: indexPath.row)
    }
}
