//
//  Note.swift
//  notes
//
//  Created by David  Bowen on 10/18/16.
//  Copyright © 2016 Interapt. All rights reserved.
//

import Foundation

class Note {
    var title = ""
    var text = ""
    var date = Date()
    
    var dateString: String{
        let dateFormatter = DateFormatter()
        dateFormatter.dateFormat = "MM/dd/yyyy"
        return dateFormatter.string(from: date)
    }
    
    init(){
        
        
    }
    
    init(title: String, text: String){
        self.title = title
        self.text = text
        
        
    }
    
}
