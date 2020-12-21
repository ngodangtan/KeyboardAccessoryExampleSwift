//
//  ViewController.swift
//  KeyboardAccessoryExample
//
//  Created by Ngo Dang tan on 21/12/2020.
//

import UIKit

class ViewController: UIViewController {

    let field: UITextField = {
       let field = UITextField()
        field.placeholder = "Enter Name ..."
        field.backgroundColor = .secondarySystemBackground
        return field
    }()
    override func viewDidLoad() {
        super.viewDidLoad()
        view.addSubview(field)
        let toolBar = UIToolbar(frame: CGRect(x: 0, y: 0, width: view.frame.size.width, height: 50))
        // items
        let flexibleSpace = UIBarButtonItem(barButtonSystemItem: .flexibleSpace, target: self, action: nil)
        let doneButton = UIBarButtonItem(title: "Done", style: .done, target: self, action: #selector(didTapDone))
        toolBar.items = [flexibleSpace,doneButton]
        toolBar.sizeToFit()
        field.inputAccessoryView = toolBar
    }
    @objc private func didTapDone(){
        field.resignFirstResponder()
        
    }
    
    override func viewDidLayoutSubviews() {
        super.viewDidLayoutSubviews()
        field.frame = CGRect(x: 20, y: 30 + view.safeAreaInsets.top, width: view.frame.size.width-40,
                             height: 50)
        
    }


}

