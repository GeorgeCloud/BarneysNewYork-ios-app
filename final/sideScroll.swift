//
//  sideScroll.swift
//  final
//
//  Created by George Ceja on 5/8/22.
//

//import UIKit
//
//struct BasicGridSection: Section {
//    let numberOfItems = 10
//
//    func layoutSection() -> NSCollectionLayoutSection? {
//        let itemSize = NSCollectionLayoutSize(widthDimension: .fractionalWidth(0.2), heightDimension: .fractionalHeight(1.0))
//        let item = NSCollectionLayoutItem(layoutSize: itemSize)
//        let groupSize = NSCollectionLayoutSize(widthDimension: .fractionalWidth(1.0), heightDimension: .fractionalHeight(0.1))
//        let group = NSCollectionLayoutGroup.horizontal(layoutSize: groupSize, subitems: [item])
//        let section = NSCollectionLayoutSection(group: group)
//        return section
//    }
//
//    func configureCell(collectionView: UICollectionView, indexPath: IndexPath) -> UICollectionViewCell {
//        let cell = collectionView.dequeueReusableCell(withReuseIdentifier: String(describing: GridCell.self), for: indexPath)
//
//        return cell
//    }
//}
