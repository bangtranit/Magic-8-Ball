//
//  ViewController.swift
//  Magic 8 Ball
//
//  Created by Tran Thanh Bang on 5/5/18.
//  Copyright © 2018 Tran Thanh Bang. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    @IBOutlet weak var askMeImageView: UIImageView!
    
    let arrayImages = ["ball1","ball2","ball3","ball4","ball5"]
    
    override func viewDidLoad() {
        super.viewDidLoad()
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
    }

    @IBAction func onClickAskMe(_ sender: Any) {
        updateImages()
        randomMax(maxValue: 10)
    }
    
    func randomMax(maxValue value: Int){
        let value : Int = Int(arc4random_uniform(UInt32(value)))
        print("Value is \(value)")
    }
    
    func random() -> Int{
        let randomeValue = Int(arc4random_uniform(5))
        print(randomeValue)
        return randomeValue
    }
    
    func updateImages(){
        askMeImageView.image = UIImage(named: arrayImages[random()])
    }
    
    override func motionEnded(_ motion: UIEventSubtype, with event: UIEvent?) {
        updateImages()
    }
}

