//
//  ImageVC.swift
//  Class1
//
//  Created by Jagadeesh on 16/03/23.
//

import UIKit

class ImageVC: UIViewController, UITextViewDelegate {
    
    @IBOutlet var coomentTextView: UITextView!
    @IBOutlet var CommentCountLabel: UILabel!
    
    @IBOutlet weak var indicator: UIActivityIndicatorView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        coomentTextView.delegate = self
        
        indicator.isAnimating
        let CurrentCount = coomentTextView.text.count
        CommentCountLabel.text = "\(CurrentCount) Out of 1100 "
        
        
    }
    
    @IBAction func button(_ sender: Any) {
        
        if indicator.isAnimating == true {
            indicator.startAnimating()
        }else {
            indicator.stopAnimating()
        }
    }
    
//MARK: UITextView delegate
    
    
    func textViewShouldBeginEditing(_ textView: UITextView) -> Bool {
        
        return true
        
    }
    
    func textViewShouldEndEditing(_ textView: UITextView) -> Bool{
        return true
        
    }
    
    
    
    func textViewDidBeginEditing(_ textView: UITextView){
        
    }
    
    
    func textViewDidEndEditing(_ textView: UITextView){
        
    }
    
    
    
    func textView(_ textView: UITextView, shouldChangeTextIn range: NSRange, replacementText text: String) -> Bool {
        
        if text == "\n" {
            textView.resignFirstResponder()
        }
        CommentCountLabel.text = "\(textView.text.count) Out of 1100"
       
        if textView.text.count < 1100 {
            return true
        }else {
            return false
        }
       
    }
    
    
    func textViewDidChange(_ textView: UITextView){
        
        CommentCountLabel.text = "\(textView.text.count) Out of 1100"
        
    }
    
    
    
    func textViewDidChangeSelection(_ textView: UITextView){
        CommentCountLabel.text = "\(textView.text.count) Out of 1100"
        
    }
    
    
    
    func textView(_ textView: UITextView, shouldInteractWith URL: URL, in characterRange: NSRange, interaction: UITextItemInteraction) -> Bool{
        return true
    }
    
    
    func textView(_ textView: UITextView, shouldInteractWith textAttachment: NSTextAttachment, in characterRange: NSRange, interaction: UITextItemInteraction) -> Bool{
        return true
    }
    
    
    
    
    func textView(_ textView: UITextView, shouldInteractWith URL: URL, in characterRange: NSRange) -> Bool{
        return true
    }
    
    
    func textView(_ textView: UITextView, shouldInteractWith textAttachment: NSTextAttachment, in characterRange: NSRange) -> Bool {
        return true
    }
    
    
}
