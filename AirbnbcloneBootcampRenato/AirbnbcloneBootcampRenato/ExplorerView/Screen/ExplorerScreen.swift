//
//  ExplorerScreen.swift
//  AirbnbcloneBootcampRenato
//
//  Created by Renato Vieira on 07/08/24.
//

import UIKit

class ExplorerScreen: UIView {
    
    lazy var searchBarView: UIView = {
        let view = UIView()
        view.backgroundColor = .white
        //view.clipsToBounds = true
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
    
    init() {
        super.init(frame: .zero)
        backgroundColor = .white
        self.buildViewHierarchy()
        self.setupConstraints()
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    private func buildViewHierarchy() {
        addSubview(searchBarView)
        searchBarView.addSubview(searchIconImageView)
        searchBarView.addSubview(searchLabel)
        searchBarView.addSubview(searchDetailLabel)
    }
    
    private func setupConstraints() {
        searchBarView.anchor(top: safeAreaLayoutGuide.topAnchor, leading: leadingAnchor, trailing: trailingAnchor, padding: UIEdgeInsets(top: 16, left: 16, bottom: 0, right: 16), size: CGSize(width: frame.width, height: 60))
        
        searchIconImageView.anchor(leading: searchBarView.leadingAnchor, padding: UIEdgeInsets(top: 0, left: 12, bottom: 0, right: 0), size: CGSize(width: 24, height: 24))
        searchIconImageView.centerYAnchor(yAnchor: searchBarView.centerYAnchor)
        
        searchLabel.anchor(top: searchBarView.topAnchor, leading: searchIconImageView.trailingAnchor , padding: UIEdgeInsets(top: 12, left: 8, bottom: 0, right: 0))
        
        searchDetailLabel.anchor(top: searchLabel.bottomAnchor, leading: searchIconImageView.trailingAnchor, trailing: searchBarView.trailingAnchor, padding: UIEdgeInsets(top: 2, left: 8, bottom: 0, right: 2))
    }
}
