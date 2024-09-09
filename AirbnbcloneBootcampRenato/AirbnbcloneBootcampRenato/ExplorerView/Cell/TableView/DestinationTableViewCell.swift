//
//  DestinationTableViewCell.swift
//  AirbnbcloneBootcampRenato
//
//  Created by Renato Vieira on 08/09/24.
//

import UIKit

class DestinationTableViewCell: UITableViewCell {
    
    static let identifier: String = String(describing: DestinationTableViewCell.self)
    
    override init(style: UITableViewCell.CellStyle, reuseIdentifier: String?) {
        super.init(style: style, reuseIdentifier: reuseIdentifier)
        selectionStyle = .none
        setup()
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    lazy var collectionView: UICollectionView = {
        let layout = UICollectionViewFlowLayout()
        layout.minimumLineSpacing = 0
        layout.scrollDirection = .horizontal
        let collectionView = UICollectionView(frame: .zero, collectionViewLayout: layout)
        collectionView.showsHorizontalScrollIndicator = false
        collectionView.backgroundColor = .lightGray
        collectionView.layer.cornerRadius = 8
        collectionView.isPagingEnabled = true
        collectionView.delegate = self
        collectionView.dataSource = self
        collectionView.register(DestinationImageCollectionViewCell.self, forCellWithReuseIdentifier: DestinationImageCollectionViewCell.identifier)
        return collectionView
    }()
    
    lazy var pageControl: UIPageControl = {
        let pageControl = UIPageControl()
        pageControl.numberOfPages = 3
        pageControl.isEnabled = false
        return pageControl
    }()
    
    lazy var statusLabel: UILabel = {
        let label = UILabel()
        label.textColor = .black
        label.backgroundColor = .white
        label.font = UIFont.systemFont(ofSize: 14)
        label.numberOfLines = 1
        label.layer.masksToBounds = true
        label.layer.cornerRadius = 10
        label.textAlignment = .center
        label.text = "Superhost"
        return label
    }()
    
    lazy var titleLabel: UILabel = {
        let label = UILabel()
        label.textColor = .black
        label.font = UIFont.systemFont(ofSize: 14, weight: .semibold)
        label.text = "Cabana do Sol, Brasil"
        return label
    }()
    
    lazy var subTitleLabel: UILabel = {
        let label = UILabel()
        label.textColor = .gray
        label.font = UIFont.systemFont(ofSize: 12, weight: .regular)
        label.text = "Vista deslumbrante da natureza"
        return label
    }()
    
    lazy var periodLabel: UILabel = {
        let label = UILabel()
        label.textColor = .gray
        label.font = UIFont.systemFont(ofSize: 12, weight: .regular)
        label.text = "3 noites -> 20 de set - 23 de set"
        return label
    }()
    
    lazy var priceLabel: UILabel = {
        let label = UILabel()
        label.textColor = .black
        label.font = UIFont.systemFont(ofSize: 14, weight: .regular)
        label.text = "R$ 1.850 por noite"
        return label
    }()
    
    lazy var ratingLabel: UILabel = {
        let label = UILabel()
        label.textColor = .black
        label.font = UIFont.systemFont(ofSize: 14, weight: .regular)
        label.text = "4,85"
        return label
    }()
    
    lazy var starImageView: UIImageView = {
        let imageView = UIImageView()
        imageView.image = UIImage(systemName: "star.fill")
        imageView.tintColor = .black
        imageView.contentMode = .scaleAspectFill
        return imageView
    }()
    
    lazy var likeButton: UIButton = {
        let button = UIButton()
        button.setImage(UIImage(systemName: "heart"), for: .normal)
        button.tintColor = .white
        button.addTarget(self, action: #selector(tappedLike), for: .touchUpInside)
        return button
    }()
    
    @objc func tappedLike() {
        print(#function)
    }
    
    private func setup() {
        buildViewHierarchy()
        configConstraints()
    }
    
    private func buildViewHierarchy() {
        contentView.addSubview(collectionView)
        contentView.addSubview(pageControl)
        contentView.addSubview(statusLabel)
        contentView.addSubview(titleLabel)
        contentView.addSubview(ratingLabel)
        contentView.addSubview(starImageView)
        contentView.addSubview(subTitleLabel)
        contentView.addSubview(periodLabel)
        contentView.addSubview(priceLabel)
        contentView.addSubview(likeButton)
    }
    
    private func configConstraints() {
        collectionView.anchor(top: contentView.topAnchor, leading: contentView.leadingAnchor, trailing: contentView.trailingAnchor, padding: UIEdgeInsets(top: 16, left: 16, bottom: 0, right: 16), size: CGSize(width: 0, height: 300))
        
        pageControl.anchor(bottom: collectionView.bottomAnchor)
        pageControl.centerXAnchor(xAnchor: collectionView.centerXAnchor)
        
        statusLabel.anchor(top: collectionView.topAnchor, leading: collectionView.leadingAnchor,  padding: UIEdgeInsets(top: 12, left: 12, bottom: 0, right: 0), size: CGSize(width: 80, height:25))
        
        titleLabel.anchor(top: collectionView.bottomAnchor, leading: collectionView.leadingAnchor, padding: UIEdgeInsets(top: 10, left: 0, bottom: 0, right: 0))
        
        ratingLabel.anchor(top: collectionView.bottomAnchor, trailing: collectionView.trailingAnchor, padding: UIEdgeInsets(top: 10, left: 0, bottom: 0, right: 0))
        
        starImageView.anchor(top: collectionView.bottomAnchor, trailing: ratingLabel.leadingAnchor, padding: UIEdgeInsets(top: 10, left: 0, bottom: 0, right: 5), size: CGSize(width: 15, height: 15))
        
        subTitleLabel.anchor(top: titleLabel.bottomAnchor, leading: collectionView.leadingAnchor, padding: UIEdgeInsets(top: 5, left: 0, bottom: 0, right: 0))
        
        periodLabel.anchor(top: subTitleLabel.bottomAnchor, leading: collectionView.leadingAnchor, padding: UIEdgeInsets(top: 5, left: 0, bottom: 0, right: 0))
        
        priceLabel.anchor(top: periodLabel.bottomAnchor, leading: collectionView.leadingAnchor, bottom: contentView.bottomAnchor, padding: UIEdgeInsets(top: 5, left: 0, bottom: 0, right: 0))
        
        likeButton.anchor(top: collectionView.topAnchor, trailing: collectionView.trailingAnchor, padding: UIEdgeInsets(top: 12, left: 0, bottom: 0, right: 12), size: CGSize(width: 34, height: 34))
    }
}

extension DestinationTableViewCell: UICollectionViewDelegateFlowLayout, UICollectionViewDataSource {
    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        3
    }
    
    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        guard let cell = collectionView.dequeueReusableCell(withReuseIdentifier: DestinationImageCollectionViewCell.identifier, for: indexPath) as? DestinationImageCollectionViewCell else { return UICollectionViewCell()}
        
        return cell
    }
    
    func collectionView(_ collectionView: UICollectionView, layout collectionViewLayout: UICollectionViewLayout, sizeForItemAt indexPath: IndexPath) -> CGSize {
        
        return CGSize(width: collectionView.frame.width, height: collectionView.frame.height)
    }
    
    func scrollViewDidEndDecelerating(_ scrollView: UIScrollView) {
        let pageNumber = round(scrollView.contentOffset.x / scrollView.frame.width)
        pageControl.currentPage = Int(pageNumber)
    }
}
