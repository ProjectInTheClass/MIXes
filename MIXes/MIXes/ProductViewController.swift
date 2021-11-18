//
//  ViewController.swift
//  MIXes
//
//  Created by 김결 on 2021/11/10.
//

import UIKit

class ProductViewController: UIViewController {
    var Data = productData.shared.product
    
    @IBOutlet weak var productViewTableView: UITableView!
    override func viewDidLoad() {
        super.viewDidLoad()
        print("modal start")
        productViewTableView.dataSource = self
        productViewTableView.delegate = self

        // Do any additional setup after loading the view.
    }
    @IBAction func modalExitButton(_ sender: UIButton) {
        dismiss(animated: true, completion: nil)

    }
    @IBAction func productAddMeterial(_ sender: UIButton) {
        dismiss(animated: true, completion: nil)
        print("제품 추가")
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

extension ProductViewController: UITableViewDataSource, UITableViewDelegate{
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return Data.count
        
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let productTable_Cell = productViewTableView.dequeueReusableCell(withIdentifier: "productTable_Cell", for: indexPath) as! ProductCell
        let product = Data[indexPath.row]
        productTable_Cell.ProductName_custom.text = product.productName
        productTable_Cell.Price_custom.text = "\(product.productPrice)"
        
        return productTable_Cell
    }
    
}
