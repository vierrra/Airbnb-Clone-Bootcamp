//
//  ExplorerScreen.swift
//  AirbnbcloneBootcampRenato
//
//  Created by Renato Vieira on 07/08/24.
//

import UIKit

class ExplorerScreen: UIView {
    
    init() {
        super.init(frame: .zero)
        backgroundColor = .white
        self.buildViewHierarchy()
        self.setupConstraints()
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    lazy var searchBarView: UIView = {
        let view = UIView()
        view.backgroundColor = .white
        view.layer.cornerRadius = 30
        view.setupShadow()
        return view
    }()
    
    lazy var searchIconImageView: UIImageView = {
        let imageView = UIImageView()
        imageView.image = UIImage(systemName: "magnifyingglass")
        imageView.tintColor = .black
        return imageView
    }()
    
    lazy var searchLabel: UILabel = {
        let label = UILabel()
        label.translatesAutoresizingMaskIntoConstraints = false
        label.textColor = .black
        label.font = UIFont.systemFont(ofSize: 17)
        label.text = "Para onde?"
        return label
    }()
    
    lazy var searchDetailLabel: UILabel = {
        let label = UILabel()
        label.translatesAutoresizingMaskIntoConstraints = false
        label.textColor = .lightGray
        label.font = UIFont.systemFont(ofSize: 12)
        label.text = "Qualquer lugar · Qualquer semana · Hóspedes? Qualquer lugar · Qualquer semana · Hóspedes?"
        return label
    }()
    
    lazy var collectionView: UICollectionView = {
        let layout = UICollectionViewFlowLayout()
        layout.sectionInset = UIEdgeInsets(top: 0, left: 16, bottom: 0, right: 16)
        layout.scrollDirection = .horizontal
        let collectionView = UICollectionView(frame: .zero, collectionViewLayout: layout)
        collectionView.showsHorizontalScrollIndicator = false
        collectionView.backgroundColor = .clear
        collectionView.register(CategoryCollectionViewCell.self, forCellWithReuseIdentifier: CategoryCollectionViewCell.identifier)
        return collectionView
    }()
    
    lazy var lineView: UIView = {
        let view = UIView()
        view.backgroundColor = .lightGray
        return view
    }()
    
    lazy var tableView: UITableView = {
        let tableView = UITableView()
        tableView.backgroundColor = .white
        tableView.separatorStyle = .none
        tableView.showsVerticalScrollIndicator = false
        // TO DO: Register cell
        return tableView
    }()
    
    public func configCollectionViewProtocols(_ delegate: UICollectionViewDelegate, _ datasource: UICollectionViewDataSource) {
        collectionView.delegate = delegate
        collectionView.dataSource = datasource
    }
    
    public func configTableViewProtocols(_ delegate: UITableViewDelegate, _ datasource: UITableViewDataSource) {
        tableView.delegate = delegate
        tableView.dataSource = datasource
    }
    
    private func buildViewHierarchy() {
        addSubview(searchBarView)
        searchBarView.addSubview(searchIconImageView)
        searchBarView.addSubview(searchLabel)
        searchBarView.addSubview(searchDetailLabel)
        addSubview(collectionView)
        addSubview(lineView)
        addSubview(tableView)
    }
    
    private func setupConstraints() {
        searchBarView.anchor(top: safeAreaLayoutGuide.topAnchor, leading: leadingAnchor, trailing: trailingAnchor, padding: UIEdgeInsets(top: 16, left: 16, bottom: 0, right: 16), size: CGSize(width: frame.width, height: 60))
        
        searchIconImageView.anchor(leading: searchBarView.leadingAnchor, padding: UIEdgeInsets(top: 0, left: 12, bottom: 0, right: 0), size: CGSize(width: 24, height: 24))
        searchIconImageView.centerYAnchor(yAnchor: searchBarView.centerYAnchor)
        
        searchLabel.anchor(top: searchBarView.topAnchor, leading: searchIconImageView.trailingAnchor , padding: UIEdgeInsets(top: 12, left: 8, bottom: 0, right: 0))
        
        searchDetailLabel.anchor(top: searchLabel.bottomAnchor, leading: searchIconImageView.trailingAnchor, trailing: searchBarView.trailingAnchor, padding: UIEdgeInsets(top: 2, left: 8, bottom: 0, right: 2))
        
        collectionView.anchor(top: searchBarView.bottomAnchor, leading: leadingAnchor, trailing: trailingAnchor, padding: UIEdgeInsets(top: 16, left: 0, bottom: 0, right: 0), size: CGSize(width: 0, height: CategoryCollectionViewCell.height))
        
        lineView.anchor(top: collectionView.bottomAnchor, leading: leadingAnchor, trailing: trailingAnchor, size: CGSize(width: 0, height: 0.3))
        
        tableView.anchor(top: lineView.bottomAnchor, leading: leadingAnchor, bottom: bottomAnchor, trailing: trailingAnchor)
    }
}
