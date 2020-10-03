//
//  DetailViewController.swift
//  FirstRxSwift
//
//  Created by Ade Reskita on 03/10/20.
//

import UIKit
import RxSwift

protocol CharacterDelegate {
    func didSelectChar(_ name:String)
}

class DetailViewController: UIViewController {
    
    var delegate:CharacterDelegate?

    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }
    
    @IBAction func characterSet(_ sender: UIButton){
        guard let characterName = sender.titleLabel?.text else { return }
        
        if let delegateObj = delegate {
            delegateObj.didSelectChar(characterName)
        }
    }

}
