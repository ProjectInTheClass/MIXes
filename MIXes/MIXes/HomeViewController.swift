//
//  HomeViewController.swift
//  MIXes
//
//  Created by jeonghoon hong on 2021/10/27.
//

import UIKit

class HomeViewController: UIViewController {


    @IBOutlet weak var mainTableView_custom: UITableView!
    
    let cellName:String = "mainTable_Cell"
    let cellItem:Array<String> = ["딸기향","포도향","레몬향"]
    let cellPercent:Array<String> = ["50%","30%","20%"]
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        print("hello ios")
        
        mainTableView_custom.delegate = self
        mainTableView_custom.dataSource = self

        // Do any additional setup after loading the view.
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

extension HomeViewController: UITableViewDataSource, UITableViewDelegate{
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return cellItem.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let mainTable_Cell = mainTableView_custom.dequeueReusableCell(withIdentifier: cellName, for: indexPath) as! MainCell
        
        mainTable_Cell.itemName_custom.text = cellItem[indexPath.row]
        mainTable_Cell.itemPercent_custom.text = cellPercent[indexPath.row]
        
        return mainTable_Cell
    }
    

    
}

//    public func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
//        return cellItem.count
//    }
//
//    public func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
//        let mainTable_Cell = mainTableView_Custom.dequeueReusableHeaderFooterView(withIdentifier: mainTable_Cell, for: indexPath) as! MainTableViewCell
//
//        mainTable_Cell.ItemName.text = cellItem[indexPath.row]
//        mainTable_Cell.ItemPercent.text = cellPercent[indexPath.row]
//
//        return mainTable_Cell
//    }
