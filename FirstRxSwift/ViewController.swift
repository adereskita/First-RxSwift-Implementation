//
//  ViewController.swift
//  FirstRxSwift
//
//  Created by Ade Reskita on 03/10/20.
//

import UIKit
import RxSwift

class ViewController: UIViewController, CharacterDelegate {

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }

    @IBAction func selectCharacter(_ sender: Any) {
        let detailVC = storyboard?.instantiateViewController(identifier: "DetailViewController") as! DetailViewController
        
        detailVC.delegate = self
        
        navigationController?.pushViewController(detailVC, animated: true)
        
    }
    
    func didSelectChar(_ name: String) {
        <#code#>
    }
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
    }
    
}

