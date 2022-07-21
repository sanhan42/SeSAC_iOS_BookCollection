//
//  SearchViewController.swift
//  BookCollection
//
//  Created by 한상민 on 2022/07/21.
//

import UIKit

class SearchViewController: UIViewController {
    static let identifier = "SearchViewController"
    override func viewDidLoad() {
        super.viewDidLoad()
        navigationItem.title = "검색 화면"
        navigationItem.leftBarButtonItem = UIBarButtonItem(image: UIImage(systemName: "xmark"), style: .plain, target: self, action: #selector(closeButtonClicked))
        // Do any additional setup after loading the view.
    }
    
    @objc func closeButtonClicked(){
        self.dismiss(animated: true)
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
