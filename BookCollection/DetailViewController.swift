//
//  DetailViewController.swift
//  BookCollection
//
//  Created by 한상민 on 2022/07/21.
//

import UIKit

class DetailViewController: UIViewController {
    static let identifier = "detailViewController"
    override func viewDidLoad() {
        super.viewDidLoad()
        navigationItem.title = "상세화면"
    }
    @IBAction func moreButtonClicked(_ sender: UIButton) {
        let sb = UIStoryboard(name: "Main", bundle: nil)
        let vc = sb.instantiateViewController(withIdentifier: WebViewController.identifier) as! WebViewController
        self.navigationController?.pushViewController(vc, animated: true)
        
    }
}
