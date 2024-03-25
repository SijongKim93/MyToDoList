//
//  TodoCell.swift
//  MyToDoList
//
//  Created by 김시종 on 3/25/24.
//

import UIKit

class TodoCell: UITableViewCell {
    
    
    @IBOutlet weak var cellLabel: UILabel!
    
    
    
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }
    
    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)
        
        // Configure the view for the selected state
    }
    
    
    
    @IBAction func checkButtonTapped(_ sender: UIButton) {
        if sender.isSelected {
            sender.isSelected = false
            cellLabel.textColor = .black
            cellLabel.attributedText = cellLabel.text?.removeStrikeThrough()
        } else {
            sender.isSelected = true
            cellLabel.textColor = .black
            cellLabel.attributedText = cellLabel.text?.strikeThrough()
        }
    }
}

extension String {
    func strikeThrough() -> NSAttributedString {
        let attributeString = NSMutableAttributedString(string: self)
        attributeString.addAttribute(NSAttributedString.Key.strikethroughStyle, value: NSUnderlineStyle.single.rawValue, range: NSMakeRange(0, attributeString.length))
        return attributeString
    }
}

extension String {
  func removeStrikeThrough() -> NSAttributedString {
        let attributeString = NSMutableAttributedString(string: self)
        attributeString.addAttribute(NSAttributedString.Key.strikethroughStyle, value: 0 , range: NSMakeRange(0, attributeString.length))
        return attributeString
    }
}

