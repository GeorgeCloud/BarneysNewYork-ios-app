//
//  GridCollectionView.swift
//  final
//
//  Created by George Ceja on 5/9/22.
//

import UIKit


class GridCollectionCellView: UICollectionViewCell {
//    @IBOutlet weak var titleLabel: UILabel!
    static let identifer = "GridCollectionCellView"
    
    private let myImageView: UIImageView = {
        let imageView  = UIImageView()
        imageView.image = UIImage(named: "house")
        imageView.contentMode = .scaleAspectFill
        return imageView
    }()
    
    private let myLabel: UILabel = {
        let label  = UILabel()
        label.backgroundColor = UIColor(red: 247/255, green: 193.0/255, blue: 214.0/255, alpha: 0.3)
        label.text = "placeholder text"

        return label
    }()
    
    private let mypriceLabel: UILabel = {
        let priceLabel  = UILabel()
        priceLabel.text = "placeholder text"

        return priceLabel
    }()


    override init(frame: CGRect){
        super.init(frame: frame)
        contentView.backgroundColor = UIColor(red: 247/255, green: 193.0/255, blue: 214.0/255, alpha: 0.3)
        contentView.addSubview(myImageView)
        contentView.addSubview(myLabel)
        contentView.addSubview(mypriceLabel)
    }
    
    required init(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    override func layoutSubviews() {
        super.layoutSubviews()
        
        myLabel.frame = CGRect(x: 10,
                               y: contentView.frame.size.height-50,
                               width: contentView.frame.size.width-10,
                               height: 50)
        
        mypriceLabel.frame = CGRect(x: 90,
                                  y: contentView.frame.size.height-50,
                                  width: contentView.frame.size.width-10,
                                  height: 50)
    
        myImageView.frame = CGRect(x: 5,
                                   y: -25,
                                   width: contentView.frame.size.width-10,
                                   height: contentView.frame.size.height-140)
    }

    public func configure(label: String, price: Float){
        myLabel.text = label
        mypriceLabel.text = "$\(price)"
        myImageView.image = UIImage(named: label)
    }

    override func prepareForReuse() {
        super.prepareForReuse()
        myLabel.text = nil
        mypriceLabel.text = nil
        myImageView.image = nil
    }
}
