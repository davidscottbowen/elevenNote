//
//  NoteTableViewCell.swift
//  notes
//
//  Created by David  Bowen on 10/18/16.
//  Copyright © 2016 Interapt. All rights reserved.
//

import UIKit

class NoteTableViewCell: UITableViewCell {
    
    @IBOutlet weak var noteTitleLabel: UILabel!
    
    @IBOutlet weak var noteTextLabel: UILabel!
    
    @IBOutlet weak var noteDateLabel: UILabel!
    
    weak var note: Note!
    

    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }

    func setupCell(_ note: Note){
        self.note = note
        noteTitleLabel.text = note.title
        noteTextLabel.text = note.text
        noteDateLabel.text = note.dateString
    }
}
