//
//  CustomCellTableViewCell.swift
//  BinaryCounter
//
//  Created by Najla on 28/12/2021.
//

import UIKit

protocol CustomCellDelegate: AnyObject {
    func plus(number: Int)
    func minus(number: Int)
}//end protocol

class CustomCellTableViewCell: UITableViewCell {
   
    @IBOutlet weak var NumberLabel: UILabel!
    weak var delegate: CustomCellDelegate?
    
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)
        // Configure the view for the selected state
    }

    @IBAction func PluButtonClicked(_ sender: UIButton) {
        if let powerNumber = Int(NumberLabel.text!){
                delegate?.minus(number: powerNumber)
            }
    }
    
    @IBAction func MinusButtonClicked(_ sender: UIButton) {
        if let powerNumber = Int(NumberLabel.text!){
                delegate?.plus(number: powerNumber)
            }
    }
    
}
