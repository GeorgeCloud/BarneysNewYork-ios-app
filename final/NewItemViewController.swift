//
//  AddTodoViewController.swift
//  final
//
//  Created by George Ceja on 5/3/22.
//

import UIKit

class NewItemViewController: UIViewController {
    @IBOutlet weak var textField: UITextField!
//    @IBOutlet weak var save: UIButton!

    var newItem: ((String) -> Void)?
    
    override func viewDidLoad() {
        super.viewDidLoad()
        navigationItem.rightBarButtonItem = UIBarButtonItem(title: "Add to cart", style: .done, target: self, action: #selector(saveButtonTapped))
    }
    
    @objc func saveButtonTapped() {
        if let newItem = newItem {
            newItem(textField.text!)
            navigationController?.popViewController(animated: true)
        }
    }
}
