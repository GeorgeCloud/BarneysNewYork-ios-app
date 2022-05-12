//
//  ViewController.swift
//  final
//
//  Created by George Ceja on 5/2/22.
//
import UIKit


class ViewController: UIViewController {
    var cart = ["avocado", "blueberry", "cherry", "orange", "pear", "pineapple", "strawberry"]

    @IBOutlet weak var tableView: UITableView!
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        tableView.dataSource = self
        
        navigationItem.rightBarButtonItem = UIBarButtonItem(title: "Add Item", style: .done, target: self, action: #selector(showCart))
        
        navigationItem.leftBarButtonItem = UIBarButtonItem(title: "Shop", style: .done, target: self, action: #selector(showInventory))
    }
    
    @objc func showCart() {
        let vc = storyboard?.instantiateViewController(withIdentifier: "newitem") as! NewItemViewController
        navigationController?.pushViewController(vc, animated: true)
        
        func newItem(name: String) {
            cart.append(name)
            tableView.reloadData()
        }
        
        vc.newItem = newItem(name:)
    }
    
    @objc func showInventory() {
        let vc = storyboard?.instantiateViewController(withIdentifier: "inventory") as! ShowInventoryViewController
        navigationController?.pushViewController(vc, animated: true)
        
//        func newItem(name: String) {
//            cart.append(name)
//            tableView.reloadData()
//        }
//        
//        vc.newItem = newItem(name:)
    }
}

extension ViewController: UITableViewDataSource {
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "cell", for: indexPath)
        cell.textLabel?.text = cart[indexPath.row]
        return cell
    }

    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return cart.count
    }
}

extension ViewController: UITableViewDelegate {
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        tableView.deselectRow(at: indexPath, animated: true)
        
        let vc = storyboard?.instantiateViewController(withIdentifier: "details") as! DetailsViewController
        navigationController?.pushViewController(vc, animated: true)
        
//        vc. = cart[indexPath.row]
    }
    
}
