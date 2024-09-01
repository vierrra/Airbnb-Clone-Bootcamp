//
//  ExplorerViewController.swift
//  AirbnbcloneBootcampRenato
//
//  Created by Renato Vieira on 05/08/24.
//

import UIKit

class ExplorerViewController: UIViewController {
    
    var screen: ExplorerScreen?
    var viewModel: ExplorerViewModel = ExplorerViewModel()
    
    override func loadView() {
        screen = ExplorerScreen()
        view = screen
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        screen?.configCollectionViewProtocols(self, self)
        print("ExplorerView")
    }
}

extension ExplorerViewController: UICollectionViewDelegateFlowLayout, UICollectionViewDataSource {
    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        10
    }
    
    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        let cell = collectionView.dequeueReusableCell(withReuseIdentifier: CategoryCollectionViewCell.identifier, for: indexPath) as? CategoryCollectionViewCell
        cell?.setupCell(travelCategory: viewModel.loadCurrentTravelCategory(indexPath) )
        return cell ?? UICollectionViewCell()
    }
    
    func collectionView(_ collectionView: UICollectionView, layout collectionViewLayout: UICollectionViewLayout, sizeForItemAt indexPath: IndexPath) -> CGSize {
        CategoryCollectionViewCell.calculateSize(title: viewModel.getTitle(indexPath))
    }
}
