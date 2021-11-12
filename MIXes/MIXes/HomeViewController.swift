//
//  HomeViewController.swift
//  MIXes
//
//  Created by jeonghoon hong on 2021/10/27.
//

import UIKit

class HomeViewController: UIViewController {
    var data = meterialData.shared.meterial

    @IBOutlet weak var mainTableView_custom: UITableView!
    override func viewDidLoad() {
        super.viewDidLoad()
        print("hello ios")
        
        mainTableView_custom.delegate = self
        mainTableView_custom.dataSource = self

        
        // Do any additional setup after loading the view.
    }
    @IBOutlet weak var meterialTable: UITableView!
    @IBAction func addCellButton(_ sender: UIButton) {
        func makeNewCell(Name: String, Percent: Double) {
            let addMeterial : [Meterial] = [Meterial(meterialName: Name, meterialIndex: 1, meterialPercent: Percent)]
            data += addMeterial
            mainTableView_custom.reloadData()
            print("\(data)")
        }
        makeNewCell(Name: "포도향", Percent: 30)
        print("버튼 누름")
        
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
        return data.count
        
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let mainTable_Cell = mainTableView_custom.dequeueReusableCell(withIdentifier: "mainTable_Cell", for: indexPath) as! MainCell
        let meterial = data[indexPath.row]
        mainTable_Cell.itemName_custom.text = meterial.meterialName
        mainTable_Cell.itemPercent_custom.text = "\(meterial.meterialPercent)"
        
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
