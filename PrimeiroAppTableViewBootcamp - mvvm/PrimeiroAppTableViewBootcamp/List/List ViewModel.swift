//
//  List ViewModel.swift
//  PrimeiroAppTableViewBootcamp
//
//  Created by Giulia Marinho on 07/08/24.
//

import Foundation

class ListViewModel {
    
    private var listPerson: [Person] = [Person(name: "Caio", lastName: "Fabrini", age: 22, image: "person.circle"),
                                        Person(name: "Bárbara", lastName: "Fabrini", age: 21, image: "star.fill"),
                                        Person(name: "Bárbara", lastName: "Brigolin", age: 21, image: "star.fill"),
                                        Person(name: "Thiago", lastName: "Teves", age: 30, image: "person.circle"),
                                        Person(name: "Matheus", lastName: "Humbro", age: 28, image: "medal.star"),
                                        Person(name: "Lucas", lastName: "Costa", age: 26, image: "folder.circle"),
                                        Person(name: "Alice", lastName: "Pereira", age: 20, image: "staroflife.fill")]
    
    func getListPerson() -> [Person] {
        return listPerson
    }
    
    var getcumputedListPerson: [Person] {
        return listPerson
    }
    
    var numberOfRowsInSection: Int {
        return listPerson.count
    }
    
    func loadCurrentPerson(indexPath: IndexPath) -> Person {
        return listPerson[indexPath.row]
    }
}
