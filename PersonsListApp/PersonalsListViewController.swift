//
//  PersonalsListViewController.swift
//  PersonsListApp
//
//  Created by Pavel Kuzovlev on 23.03.2022.
//

import UIKit

class PersonalsListViewController: UITableViewController {
    private var personList = Person.generatePerson()

    override func viewDidLoad() {
        super.viewDidLoad()
        tableView.rowHeight = 60

    }

    // MARK: - Table view data source

    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        personList.count
    }

    
    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "personsinfo", for: indexPath)
        let person = personList[indexPath.row]
        var content = cell.defaultContentConfiguration()
        content.text = person.name
        content.secondaryText = person.surname
        cell.contentConfiguration = content

        return cell
    }
    


    // MARK: - Navigation

    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {

    }
    

}
