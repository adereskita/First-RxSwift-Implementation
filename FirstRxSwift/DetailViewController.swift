//
//  DetailViewController.swift
//  FirstRxSwift
//
//  Created by Ade Reskita on 03/10/20.
//

import UIKit
import RxSwift
import RxRelay

/* protocol CharacterDelegate {
    func didSelectChar(_ name:String)
} */

class DetailViewController: UIViewController {
    
//    var delegate:CharacterDelegate?
    
    private let selectedCharacterVar = BehaviorRelay(value: "Character") // need to import RxRelay and install RxRelay
//    private let selectedCharacterVar = Variable(value: "Character") // not using this because deprecated
    var selectedCharacter: Observable<String> {
        return selectedCharacterVar.asObservable()
    }
    

    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
    }
    
    @IBAction func characterSet(_ sender: UIButton){
        guard let characterName = sender.titleLabel?.text else { return }
        
        selectedCharacterVar.accept(characterName)
//        selectedCharacterVar.value = characterName // do this if using deprecated Variable
        
       /* if let delegateObj = delegate {
            delegateObj.didSelectChar(characterName)
        } */
    }

}
