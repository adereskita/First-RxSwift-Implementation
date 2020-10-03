//
//  ViewController.swift
//  FirstRxSwift
//
//  Created by Ade Reskita on 03/10/20.
//

import UIKit
import RxSwift

class ViewController: UIViewController {//, CharacterDelegate {

    @IBOutlet weak var nameLbl: UILabel!
    
    let disposeBag = DisposeBag()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }

    @IBAction func selectCharacter(_ sender: Any) {
        let detailVC = storyboard?.instantiateViewController(identifier: "DetailViewController") as! DetailViewController
        
//        detailVC.delegate = self
        detailVC.selectedCharacter.subscribe(onNext: { [weak self] value in
            self?.nameLbl.text = "Your Character : \(value)"
        }).disposed(by: disposeBag)
        
        navigationController?.pushViewController(detailVC, animated: true)
        
    }
    
//    func didSelectChar(_ name: String) {
//        self.nameLbl.text = "Your Character : \(name)"
//    }
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
    }
    
}

