//
//  PopUpMenuViewController.swift
//
//  Created by Norbert Czirjak
//  based on Swift Radio
//

import UIKit

class PopUpMenuViewController: UIViewController {

    @IBOutlet weak var popupView: UIView!
    @IBOutlet weak var backgroundView: UIImageView!
    
    required init?(coder aDecoder: NSCoder) {
        super.init(coder: aDecoder)
        modalPresentationStyle = .Custom
    }
    
    //*****************************************************************
    // MARK: - ViewDidLoad
    //*****************************************************************
    
    override func viewDidLoad() {
        super.viewDidLoad()

        // Round corners
        popupView.layer.cornerRadius = 10
        
        // Set background color to clear
        view.backgroundColor = UIColor.clearColor()
        
        // Add gesture recognizer to dismiss view when touched
        let gestureRecognizer = UITapGestureRecognizer(target: self, action: #selector(PopUpMenuViewController.closeButtonPressed))
        backgroundView.userInteractionEnabled = true
        backgroundView.addGestureRecognizer(gestureRecognizer)
    }
    
    override func preferredStatusBarStyle() -> UIStatusBarStyle {
        return .LightContent
    }
    
    //*****************************************************************
    // MARK: - IBActions
    //*****************************************************************

    @IBAction func closeButtonPressed() {
        dismissViewControllerAnimated(true, completion: nil)
    }
   
    @IBAction func websiteButtonPressed(sender: UIButton) {
        // Use your own website URL here
        if let url = NSURL(string: "http://kultfm.hu") {
            UIApplication.sharedApplication().openURL(url)
        }
    }
    
}