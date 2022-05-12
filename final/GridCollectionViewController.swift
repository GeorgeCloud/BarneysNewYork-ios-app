//
//  GridCollectionViewController.swift
//  final
//
//  Created by George Ceja on 5/6/22.
//

import UIKit

private let reuseIdentifier = "cell"

let categories = ["brands", "clothing", "shoes", "accesories", "sale"]

struct Item {
    var title: String
    var price: Float
    var qty: Int
}

var items = [
    Item(title: "glasses", price: 1.0, qty: 1),
    Item(title: "hat", price: 1.0, qty: 1),
    Item(title: "hat2", price: 1.0, qty: 1),
    Item(title: "pants", price: 1.0, qty: 1),
    Item(title: "purse", price: 1.0, qty: 1),
    Item(title: "purse2", price: 1.0, qty: 1),
    Item(title: "shoes", price: 1.0, qty: 1),
    Item(title: "shorts", price: 1.0, qty: 1),
    Item(title: "top", price: 1.0, qty: 1)
]

//let paths = Bundle.main.paths(forResourcesOfType: "png", inDirectory: ".")

class GridCollectionViewController: UICollectionViewController {
//    @IBOutlet var collectionView: UICollectionView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        collectionView?.backgroundColor = .systemBackground
        collectionView!.register(GridCollectionCellView.self,
                                forCellWithReuseIdentifier: reuseIdentifier)

        for n in 2..<6 {
            items.append(Item(title: "glasses\(n)", price: 1, qty: 1))
            items.append(Item(title: "pants\(n)", price: 1, qty: 1))
        }

        for n in 2..<16 {
            items.append(Item(title: "shoes\(n)", price: 1, qty: 1))
        }

        for n in 2..<25 {
            items.append(Item(title: "top\(n)", price: 1, qty: 1))
        }
    }

    override func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        return items.count
    }

    override func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        let cell = collectionView.dequeueReusableCell(withReuseIdentifier: "cell", for: indexPath) as! GridCollectionCellView
        
        let item = items[indexPath.row]

        cell.configure(label: item.title, price: item.price)

        return cell
    }

    override func collectionView(_ collectionView: UICollectionView, didSelectItemAt indexPath: IndexPath) {
        collectionView.deselectItem(at: indexPath, animated: true)
        print("clicked on item: \(indexPath.row)")
//        let vc = DetailsViewController()
//        vc.index = indexPath.row
    }
}
