//
//  DetailTableViewCellViewModel.swift
//  TableView+CollectionViewBootcamp2024
//
//  Created by Giulia Marinho on 08/08/24.
//

import Foundation

class DetailTableViewCellViewModel {
    
  private  var detail: Detail?
    
    var numberOfRowsInSection: Int {
        return detail?.list.count ?? 0
    }
    
    func loadCurrentItem(indexPath: IndexPath) -> Item {
        return detail?.list[indexPath.row] ?? Item (text: "", image: "")
   }
    
    func setList(detail: Detail ){
        self.detail = detail
    }
    
    func getTitle(indexpath: IndexPath) -> String {
        return loadCurrentItem(indexPath: indexpath).text
    }
}

