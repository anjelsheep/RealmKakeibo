//
//  NewItemViewController.swift
//  RealmKakeibo
//
//  Created by 志賀翔太 on 2024/09/13.
//

import UIKit
import RealmSwift

class NewItemViewController: UIViewController {
    
    @IBOutlet var titleTextField: UITextField!
    @IBOutlet var priceTextField: UITextField!
    @IBOutlet var markSwitch: UISwitch!
    
    let realm = try! Realm()

    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }
    
    @IBAction func save(){
        let item = ShoppingItem()
        item.title = titleTextField.text ?? ""
        item.price = Int(priceTextField.text ?? "") ?? 0
        item.isMarked = markSwitch.isOn
        createItem(item: item)
        
        self.dismiss(animated: true)
    }
    
    func createItem(item: ShoppingItem) {
        try! realm.write{
            realm.add(item)
        }
    }

}
