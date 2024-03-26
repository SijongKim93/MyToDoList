//
//  TodoCell.swift
//  MyToDoList
//
//  Created by 김시종 on 3/25/24.
//

import UIKit

class TodoCell: UITableViewCell {
    
    
    @IBOutlet weak var cellLabel: UILabel!
    
    
    var isCompleted = false
    var index: Int = 0
    var delegate: ComponentProductCellDelegate?
    var onButtonTapped: ((Bool) -> Void)?
    
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }
    
    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)
        
        // Configure the view for the selected state
    }
    
    
    
    @IBAction func checkButtonTapped(_ sender: UIButton) {
        
        isCompleted.toggle()
        updateUI()
        onButtonTapped?(sender.isSelected)
        self.delegate?.selectedInfoBtn(index: index)
    }
    
    func updateUI() {
            if self.isCompleted {
                cellLabel.textColor = .gray
                cellLabel.attributedText = cellLabel.text?.strikeThrough()
            } else {
                cellLabel.textColor = .black
                cellLabel.attributedText = cellLabel.text?.removeStrikeThrough()
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

protocol ComponentProductCellDelegate {
    func selectedInfoBtn(index: Int)
}


