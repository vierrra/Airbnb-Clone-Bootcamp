//
//  ExplorerViewModel.swift
//  AirbnbcloneBootcampRenato
//
//  Created by Renato Vieira on 01/09/24.
//

import UIKit

class ExplorerViewModel {

    private var categoryList: [TravelCategory] = [
        TravelCategory(image: "ticket", category: "Icônicos", isSelected: true),
        TravelCategory(image: "house.and.flag.fill", category: "Chalés"),
        TravelCategory(image: "beach.umbrella", category: "Em frente à praia"),
        TravelCategory(image: "sun.horizon.fill", category: "Vistas incríveis"),
        TravelCategory(image: "fireworks", category: "Castelos"),
        TravelCategory(image: "flame", category: "Em alta"),
        TravelCategory(image: "tree", category: "Ilhas"),
        TravelCategory(image: "figure.pool.swim", category: "Lago"),
        TravelCategory(image: "sailboat", category: "Barcos"),
        TravelCategory(image: "snowflake", category: "Ártico"),
    ]
    
    var numberOfItems: Int {
        return categoryList.count
    }
    
    func loadCurrentTravelCategory(_ indexPath: IndexPath) -> TravelCategory {
        categoryList[indexPath.row]
    }
    
    func getTitle(_ indexPath: IndexPath) -> String {
        loadCurrentTravelCategory(indexPath).category
    }
}
