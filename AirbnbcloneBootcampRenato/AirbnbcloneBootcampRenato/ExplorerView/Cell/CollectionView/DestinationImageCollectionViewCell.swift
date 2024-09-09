//
//  DestinationImageCollectionViewCell.swift
//  AirbnbcloneBootcampRenato
//
//  Created by Renato Vieira on 09/09/24.
//

import UIKit

class DestinationImageCollectionViewCell: UICollectionViewCell {
    
    static let identifier: String = String(describing: DestinationTableViewCell.self)
    
    override init(frame: CGRect) {
        super.init(frame: frame)
        setup()
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    lazy var destinationImageView: UIImageView = {
        let imageView = UIImageView()
        imageView.image = UIImage(named: "castelo2")
        imageView.contentMode = .scaleAspectFill
        return imageView
    }()
    
    public func setupCell(images: String) {
        destinationImageView.image = UIImage(named: images)
    }
    
    private func setup() {
        buildViewHierarchy()
        configConstraints()
    }
    
    private func buildViewHierarchy() {
        contentView.addSubview(destinationImageView)
    }
    
    private func configConstraints() {
        destinationImageView.anchor(top: contentView.topAnchor, leading: contentView.leadingAnchor, bottom: contentView.bottomAnchor, trailing: contentView.trailingAnchor)
    }
}
