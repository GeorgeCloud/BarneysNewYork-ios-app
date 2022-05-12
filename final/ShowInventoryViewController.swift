//
//  showInventoryViewController.swift
//  final
//
//  Created by George Ceja on 5/6/22.
//

import UIKit

class ShowInventoryViewController: UIViewController {
    
    override func viewDidLoad() {
        super.viewDidLoad()
        title = "Barneys New York"
        
        let button = UIButton(frame:  CGRect(x: 0, y: 0, width: 220, height: 50))
        view.addSubview(button)
        button.backgroundColor = .systemBlue
        button.center = view.center
        button.setTitle("Shop", for: .normal)
        button.addTarget(self, action: #selector(shopButton), for: .touchUpInside)
    }

    @objc func shopButton(){
        let layout = UICollectionViewFlowLayout()
        layout.itemSize = CGSize(width: (view.frame.size.width/3)-3,
                                 height: (view.frame.size.width/3)-3)
        layout.minimumLineSpacing = 130
        layout.minimumInteritemSpacing = 1
        layout.scrollDirection = .vertical
        layout.sectionInset = UIEdgeInsets(top: 200, left: 1, bottom: 1, right: 1)
        
        let vc = GridCollectionViewController(collectionViewLayout: layout)
        present(vc, animated: true)
    }
}
