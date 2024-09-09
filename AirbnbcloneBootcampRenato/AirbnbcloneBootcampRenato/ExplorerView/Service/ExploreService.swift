//
//  ExploreService.swift
//  AirbnbcloneBootcampRenato
//
//  Created by Renato Vieira on 09/09/24.
//

import UIKit

class ExploreService {
    
    static func getCategoryJsonCaio(completion: (Result<[TravelCategory], Error>) -> Void) {
      guard let url = Bundle.main.url(forResource: "category", withExtension: "json") else {
        completion(.failure(NSError(domain: "falha ao encontrar o arquivo", code: -1)))
        return
      }

      do {
        let data = try Data(contentsOf: url)
        let listTravelCategory = try JSONDecoder().decode([TravelCategory].self, from: data)
        completion(.success(listTravelCategory))
      } catch {
        completion(.failure(error))
      }
    }
    
    public func getCategoryJson(completion: @escaping (Result<[TravelCategory], Error>) -> Void) {
        if  let url = Bundle.main.url(forResource: "category", withExtension: "json") {
            do {
                let data = try Data(contentsOf: url)
                let categoryData: [TravelCategory] = try JSONDecoder().decode([TravelCategory].self, from: data)
                completion(.success(categoryData))
            } catch {
                completion(.failure(error))
            }
        }
    }
}
