//
//  ViewController.swift
//  BinaryCounter
//
/*
 
 Create an app with an embedded table view and a custom table cell. The table view should have 16 cells showing powers of 10. Clicking on the "+" or "-" button in each cell should update the total by adding or subtracting that cells value from the total.
 */

import UIKit

class ViewController: UIViewController {
    
    //outlet
    @IBOutlet weak var TotalLabel: UILabel!
    @IBOutlet weak var Tabel: UITableView!
    //varibles
    var Counter = 0
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        Tabel.delegate = self
        Tabel.dataSource = self
    }
}//end viewcontroller

extension ViewController: UITableViewDelegate, UITableViewDataSource{
   
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return 16
    }

    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "MyCell", for: indexPath) as! CustomCellTableViewCell
       
        cell.delegate = self
        
        cell.NumberLabel.text = "\(pow(10,indexPath.row))"
        
        return cell
    }
}//end
extension ViewController: CustomCellDelegate{
    
    func plus(number: Int) {
        Counter += number
        
        TotalLabel.text = "\(Counter)"
    }
    
    func minus(number: Int) {
        Counter -= number
        
        TotalLabel.text = "\(Counter)"
    }
    
    
}



