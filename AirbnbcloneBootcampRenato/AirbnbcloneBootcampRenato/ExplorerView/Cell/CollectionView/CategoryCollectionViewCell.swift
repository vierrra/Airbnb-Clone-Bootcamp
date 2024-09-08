//
//  CategoryCollectionViewCell.swift
//  AirbnbcloneBootcampRenato
//
//  Created by Renato Vieira on 26/08/24.
//

import UIKit

class CategoryCollectionViewCell: UICollectionViewCell {
    
    static let titleFont = UIFont.systemFont(ofSize: 12, weight: .bold)
    static let height: CGFloat = 60
    static let identifier: String = String(describing: CategoryCollectionViewCell.self)
    
    override init(frame: CGRect) {
        super.init(frame: frame)
        
        setup()
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    lazy var categoryImageView: UIImageView = {
        let imageView = UIImageView()
        imageView.image = UIImage(systemName: "person.fill")
        imageView.tintColor = .black
        imageView.contentMode = .scaleAspectFill
        return imageView
    }()
    
    lazy var categoryLabel: UILabel = {
        let label = UILabel()
        label.textColor = .lightGray
        label.font = CategoryCollectionViewCell.titleFont
        label.textAlignment = .center
        label.text = "Insert text"
        return label
    }()
    
    lazy var lineView: UIView = {
        let view = UIView()
        view.backgroundColor = .black
        return view
    }()
    
    private func setup() {
        buildViewHierarchy()
        configConstraints()
    }
    
    private func buildViewHierarchy() {
        contentView.addSubview(categoryImageView)
        contentView.addSubview(categoryLabel)
        contentView.addSubview(lineView)
    }
    
    func setupCell(travelCategory: TravelCategory) {
        categoryImageView.image = UIImage(systemName: travelCategory.image)
        categoryImageView.tintColor = travelCategory.isSelected ? .black : .lightGray
        categoryLabel.text = travelCategory.category
        categoryLabel.tintColor = travelCategory.isSelected ? .black : .lightGray
        lineView.isHidden = travelCategory.isSelected ? false : true
    }
    
    private func configConstraints() {
        categoryImageView.anchor(top: contentView.topAnchor, size: CGSize(width: 24, height: 24))
        categoryImageView.centerXAnchor(xAnchor: contentView.centerXAnchor)
        
        categoryLabel.anchor(top: categoryImageView.bottomAnchor, leading: contentView.leadingAnchor, trailing: contentView.trailingAnchor, padding: UIEdgeInsets(top: 4, left: 0, bottom: 0, right: 0))
        
        lineView.anchor(top: categoryLabel.bottomAnchor, leading: contentView.leadingAnchor, bottom: contentView.bottomAnchor, trailing: contentView.trailingAnchor, padding: UIEdgeInsets(top: 4, left: 0, bottom: 0, right: 0), size: CGSize(width: 0, height: 2))
    }
    
    static func calculateSize(title: String) -> CGSize {
      let maxSize = CGSize(width: CGFloat.greatestFiniteMagnitude, height: height)
      let boundingBox = (title as NSString).boundingRect(with: maxSize, options: .usesLineFragmentOrigin, attributes: [NSAttributedString.Key.font: titleFont], context: nil)
      return CGSize(width: boundingBox.width + 20, height: height)
    }
}
