//
//  CompleteToDoViewController.swift
//  To Do
//
//  Created by Apple on 5/13/21.
//

import UIKit

class CompleteToDoViewController: UIViewController {
    var previousVC = TableViewController()
    var selectedToDo = ToDo()
    @IBOutlet weak var titleLabel: UILabel!
    override func viewDidLoad() {
        super.viewDidLoad()
        titleLabel.text = selectedToDo.name
       }
        // Do any additional setup after loading the view.
    
    
    @IBAction func completeTapped(_ sender: UIButton) {
             }
    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destination.
        // Pass the selected object to the new view controller.
    }
    */
}

