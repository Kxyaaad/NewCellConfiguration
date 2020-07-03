//
//  TableViewCell.swift
//  NewCellConfiguration
//
//  Created by Mac on 2020/7/2.
//

import UIKit

class TableViewCell: UITableViewCell {
    
    var lab = UILabel(frame: CGRect(x: 300, y: 10, width: 50, height: 20))

    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }
    
    override func updateConfiguration(using state: UICellConfigurationState) {
        var content = UIListContentConfiguration.cell()
        
        var background = UIBackgroundConfiguration.listSidebarCell()
        
        if state.isHighlighted || state.isSelected {
            content.textProperties.color = .systemBlue
            content.text = "UpdateText"
            content.image = UIImage(named: "1")
            content.imageToTextPadding = 20
            content.imageProperties.maximumSize = .init(width: 50, height: 50)
            content.secondaryText = "text"
            lab.text = "NIle"
            lab.textColor = .white
            self.addSubview(lab)
            content.imageProperties.reservedLayoutSize = .init(width: 50, height: 30)
            background.backgroundColor = .systemTeal
        }else{
            content.textProperties.color = .black
            content.text = "notSelected"
            lab.removeFromSuperview()
            content.secondaryText = "text"
            background.backgroundColor = .systemPink
        }
        
        self.contentConfiguration = content
        self.backgroundConfiguration = background
    }

}
