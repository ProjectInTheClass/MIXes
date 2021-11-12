//
//  ViewController.swift
//  MIXes
//
//  Created by 김결 on 2021/11/10.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var fff: UIButton!
    override func viewDidLoad() {
        super.viewDidLoad()
        fff.tintColor = .black

        // Do any additional setup after loading the view.
    }
    @IBAction func modalExitButton(_ sender: Any) {
        print("jjjjjjjjjjjjjjjjjj")

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
