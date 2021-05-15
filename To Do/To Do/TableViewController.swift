//
//  TableViewController.swift
//  To Do
//
//  Created by Apple on 5/11/21.
//

import UIKit

class TableViewController: UITableViewController {
    var toDos : [ToDo] = []
    override func viewDidLoad() {
        super.viewDidLoad()

        toDos = createToDos()
    }
    func createToDos() -> [ToDo] {

      let swift = ToDo()
      swift.name = "Learn Swift"
      swift.important = true

      let dog = ToDo()
      dog.name = "Walk the Dog"
      // important is set to false by default

      return [swift, dog]
    }
    // MARK: - Table view data source

  

    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        // #warning Incomplete implementation, return the number of rows
        return toDos.count
    }

    
    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "reuseIdentifier", for: indexPath)
        let toDo = toDos[indexPath.row]
        // Configure the cell...
        if toDo.important {
            cell.textLabel?.text = "❗️" + toDo.name
          } else {
            cell.textLabel?.text = toDo.name
          }
        return cell
    }
    

    

    
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        if let addVC = segue.destination as? AddToDoViewController {
            addVC.previousVC = self
        }
            if let completeVC = segue.destination as? CompleteToDoViewController {
                if let toDo = sender as? ToDo {
                  completeVC.selectedToDo = toDo
                  completeVC.previousVC = self
                }
        // Get the new view controller using segue.destination.
        // Pass the selected object to the new view controller.
    }
       
}

    override func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {

      // this gives us a single ToDo
      let toDo = toDos[indexPath.row]

      performSegue(withIdentifier: "moveToComplete", sender: toDo)
    }

}
