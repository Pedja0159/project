//
//  HeadlineTableViewCell.swift
//  NewProjectExample
//
//  Created by Pejo on 6/22/19.
//  Copyright © 2019 pejo015. All rights reserved.
//

import UIKit

class HeadlineTableViewCell: UITableViewCell {
   
    var headline: Headline? {
        didSet{
            
            guard let _headline = headline else {return}
            headlineTitlelabel.text = _headline.title
            detailTextLabel?.text = _headline.text
            headlineImageView.image = UIImage(named: _headline.image)
            backgroundColor = _headline.color
            
        }
        
        
        
    }
    
    @IBOutlet var headlineTitlelabel: UILabel!
    
    @IBOutlet var headlineImageView: UIImageView!
    
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }

}
