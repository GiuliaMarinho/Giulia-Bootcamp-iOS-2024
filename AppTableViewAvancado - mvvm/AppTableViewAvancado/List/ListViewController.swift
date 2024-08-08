//
//  ViewController.swift
//  AppTableViewAvancado
//
//  Created by Caio Fabrini on 29/07/24.
//

import UIKit

class ListViewController: UIViewController {
    
    var screen: ListScreen?
    var viewModel: ListViewModel = ListViewModel()
    
    
    override func loadView() {
        screen = ListScreen()
        view = screen
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        screen?.tableView.delegate = self
        screen?.tableView.dataSource = self
    }
    
}

extension ListViewController: UITableViewDelegate {
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        if indexPath.row != 0 && indexPath.row != 1 {
            let employee = viewModel.loadCurrentlist(indexPath: <#T##IndexPath#>)
            print(employee.name)
        }
    }
}

extension ListViewController: UITableViewDataSource {
    
    // numero de linhas por section
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return viewModel.numberOfRowsInSection 
    }
    
    // metodo responsavel pela criação das celulas
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        if indexPath.row == 0 || indexPath.row == 1 {
            let cell = tableView.dequeueReusableCell(withIdentifier: PersonTableViewCell.identifier, for: indexPath) as? PersonTableViewCell
            cell?.setupCell(name: "Caio", lastName: "Fabrini")
            return cell ?? UITableViewCell()
        } else {
            let cell = tableView.dequeueReusableCell(withIdentifier: EmployeeTableViewCell.identifier, for: indexPath) as? EmployeeTableViewCell
            cell?.delegate = self
            cell?.setupCell(employee: viewModel.loadCurrentlist(indexPath: [indexPath.row - 2]))
            return cell ?? UITableViewCell()
        }
    }
}

extension ListViewController: EmployeeTableViewCellProtocol {
    func tappedUpdateHeartButton(employee: Employee) {
        if let index = viewModel.list.firstIndex(of: employee) {
            viewModel.list[index].isSelectedHeart.toggle()
        }
    }
}

