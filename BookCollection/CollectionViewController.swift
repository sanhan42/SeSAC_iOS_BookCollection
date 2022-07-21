//
//  CollectionViewController.swift
//  BookCollection
//
//  Created by 한상민 on 2022/07/21.
//

import UIKit

private let reuseIdentifier = "Cell"

class CollectionViewController: UICollectionViewController {
    let list = MovieInfo().movie
    let colorList:[UIColor] = [.red, .orange, .blue, .brown, .cyan, .green, .magenta, .purple, .systemYellow, .systemTeal, .systemGray6, .systemPink]
    override func viewDidLoad() {
        super.viewDidLoad()
        let layout = UICollectionViewFlowLayout()
        let spaceing:CGFloat = 10
        let itemWidth = (UIScreen.main.bounds.width - spaceing*3) / 2
        layout.itemSize = CGSize(width: itemWidth, height: itemWidth)
        layout.scrollDirection = .vertical
        layout.sectionInset = UIEdgeInsets(top: 15.0, left: spaceing, bottom: 15.0, right: spaceing)
        layout.minimumInteritemSpacing = spaceing
        collectionView.collectionViewLayout = layout
    }

    override func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        // #warning Incomplete implementation, return the number of items
        return list.count
    }

    override func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        let cell = collectionView.dequeueReusableCell(withReuseIdentifier: "CollectionViewCell", for: indexPath) as! CollectionViewCell
        cell.backgroundColor = colorList.randomElement()
        cell.layer.cornerRadius = 16
        cell.cellTitleLabel.font = .systemFont(ofSize: 20, weight: .heavy)
        cell.cellTitleLabel.textColor = .white
        cell.cellTitleLabel.text = list[indexPath.row].title
        
        return cell
    }
    
//    override func collectionView(_ collectionView: UICollectionView, didSelectItemAt indexPath: IndexPath) {
//        <#code#>
//    }
    
    @IBAction func searchButtonClicked(_ sender: UIBarButtonItem) {
        let sb = UIStoryboard(name: "Main", bundle: nil)
        let vc = sb.instantiateViewController(withIdentifier: SearchViewController.identifier) as! SearchViewController
        
        let nav = vc.navigationController ?? UINavigationController(rootViewController: vc)
        nav.modalPresentationStyle = .fullScreen
        self.present(nav, animated: true)
    }
    
    override func collectionView(_ collectionView: UICollectionView, didSelectItemAt indexPath: IndexPath) {
        let sb = UIStoryboard(name: "Main", bundle: nil)
        let vc = sb.instantiateViewController(withIdentifier: DetailViewController.identifier) as! DetailViewController
        self.navigationController?.pushViewController(vc, animated: true)
    }
}
