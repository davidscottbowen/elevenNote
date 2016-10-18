//
//  NoteDetailViewController.swift
//  notes
//
//  Created by David  Bowen on 10/18/16.
//  Copyright © 2016 Interapt. All rights reserved.
//

import UIKit

class NoteDetailViewController: UIViewController {
    
    
    
   
    @IBOutlet weak var noteTitleField: UITextField!
    

    @IBOutlet weak var noteTextView: UITextView!
    
    var note = Note()

    override func viewDidLoad() {
        super.viewDidLoad()

        noteTitleField.text = note.title
        noteTextView.text = note.text
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    

   
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        note.title = noteTitleField.text!
        note.text = noteTextView.text
        note.date = Date()
    }
   

}
