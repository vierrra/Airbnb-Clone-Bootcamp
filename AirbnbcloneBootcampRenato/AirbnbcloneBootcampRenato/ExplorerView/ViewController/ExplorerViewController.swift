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
        screen?.configTableViewProtocols(self, self)
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
    
    func collectionView(_ collectionView: UICollectionView, didSelectItemAt indexPath: IndexPath) {
        guard viewModel.getSelectedCategoryIndex != indexPath.row else { return  }
        
        let oldIndexPath = IndexPath(row: viewModel.getSelectedCategoryIndex, section: 0)
        viewModel.setNewSelectedCategory(indexPath: indexPath)
        
        collectionView.reloadItems(at: [oldIndexPath, indexPath])
        collectionView.scrollToItem(at: indexPath, at: .centeredHorizontally, animated: true)
    }
}

extension ExplorerViewController: UITableViewDelegate, UITableViewDataSource {
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        viewModel.numberOfRowsPropertyData
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: DestinationTableViewCell.identifier, for: indexPath) as? DestinationTableViewCell
        cell?.setupCell(data: viewModel.loadCurrentPropertyData(indexPath))
        
        return cell ?? UITableViewCell()
    }
}
