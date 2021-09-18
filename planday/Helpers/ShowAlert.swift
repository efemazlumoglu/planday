//
//  ShowAlert.swift
//  planday
//
//  Created by Efe Mazlumoğlu on 18.09.2021.
//

import Foundation
import UIKit


class ShowAlert {
    
    static var instance = ShowAlert()
    
    func showAlertView(title alerTitle:String ,message alertMessage:String, preferredStyle style:UIAlertController.Style, okLabel: String, targetViewController: UIViewController,okHandler: ((UIAlertAction?) -> Void)!) {
        
        let alertController = UIAlertController(title: alerTitle, message: alertMessage, preferredStyle: style)
        let okAction = UIAlertAction(title: okLabel, style: .default, handler: okHandler)
        
        // Add Actions
        alertController.addAction(okAction)
        
        
        // Present Alert Controller
        targetViewController.present(alertController, animated: true, completion: nil)
        
    }
    
    func showAlertViewWithTwoOptions(title alertTitle:String, message alertMessage:String, preferredStyle style: UIAlertController.Style, okLabel: String, otherOptionLabel: String, cancelLabel: String, targetViewController: UIViewController, okHandler: ((UIAlertAction?) -> Void)!, otherOptionHandler: ((UIAlertAction?) -> Void)!, cancelHandler: ((UIAlertAction?) -> Void)?) {
        
        let alertController = UIAlertController(title: alertTitle, message: alertMessage, preferredStyle: style)
        let okAction = UIAlertAction(title: okLabel, style: .default, handler: okHandler)
        let otherOptionAction = UIAlertAction(title: otherOptionLabel, style: .destructive, handler: otherOptionHandler)
        let cancelAction = UIAlertAction(title: cancelLabel, style: .cancel, handler: cancelHandler)
        
        alertController.addAction(okAction)
        alertController.addAction(otherOptionAction)
        alertController.addAction(cancelAction)
        
        targetViewController.present(alertController, animated: true, completion: nil)
        
    }
    
    func showAlertViewWithTwoOptionsMore(title alertTitle:String, message alertMessage:String, preferredStyle style: UIAlertController.Style, okLabel: String, otherOptionLabel: String, cancelLabel: String, targetViewController: UIViewController, okHandler: ((UIAlertAction?) -> Void)!, otherOptionHandler: ((UIAlertAction?) -> Void)!, cancelHandler: ((UIAlertAction?) -> Void)?) {
        
        let alertController = UIAlertController(title: alertTitle, message: alertMessage, preferredStyle: style)
        let okAction = UIAlertAction(title: okLabel, style: .default, handler: okHandler)
        let otherOptionAction = UIAlertAction(title: otherOptionLabel, style: .default, handler: otherOptionHandler)
        let cancelAction = UIAlertAction(title: cancelLabel, style: .cancel, handler: cancelHandler)
        
        alertController.addAction(okAction)
        alertController.addAction(otherOptionAction)
        alertController.addAction(cancelAction)
        
        targetViewController.present(alertController, animated: true, completion: nil)
        
    }
    
    func showAlerViewWithThreeOptions(title alertTitle:String, message alertMessage:String, preferredStyle style: UIAlertController.Style, okLabel: String, otherOptionLabel: String, thirdOptionLabel: String, cancelLabel: String, targetViewController: UIViewController, okHandler: ((UIAlertAction?) -> Void)!, otherOptionHandler: ((UIAlertAction?) -> Void)!, thirdOptionHandler: ((UIAlertAction?) -> Void)!, cancelHandler: ((UIAlertAction?) -> Void)?) {
        
        let alertController = UIAlertController(title: alertTitle, message: alertMessage, preferredStyle: style)
        let okAction = UIAlertAction(title: okLabel, style: .default, handler: okHandler)
        let otherOptionAction = UIAlertAction(title: otherOptionLabel, style: .default, handler: otherOptionHandler)
        let thirdOptionAction = UIAlertAction(title: thirdOptionLabel, style: .destructive, handler: thirdOptionHandler)
        let cancelAction = UIAlertAction(title: cancelLabel, style: .cancel, handler: cancelHandler)
        
        alertController.addAction(okAction)
        alertController.addAction(otherOptionAction)
        alertController.addAction(thirdOptionAction)
        alertController.addAction(cancelAction)
        
        targetViewController.present(alertController, animated: true, completion: nil)
        
    }
    
    func showAlerViewWithThreeOptionsStorage(title alertTitle:String, message alertMessage:String, preferredStyle style: UIAlertController.Style, okLabel: String, otherOptionLabel: String, thirdOptionLabel: String, cancelLabel: String, targetViewController: UIViewController, okHandler: ((UIAlertAction?) -> Void)!, otherOptionHandler: ((UIAlertAction?) -> Void)!, thirdOptionHandler: ((UIAlertAction?) -> Void)!, cancelHandler: ((UIAlertAction?) -> Void)?) {
        
        let alertController = UIAlertController(title: alertTitle, message: alertMessage, preferredStyle: style)
        let okAction = UIAlertAction(title: okLabel, style: .default, handler: okHandler)
        let otherOptionAction = UIAlertAction(title: otherOptionLabel, style: .default, handler: otherOptionHandler)
        let thirdOptionAction = UIAlertAction(title: thirdOptionLabel, style: .default, handler: thirdOptionHandler)
        let cancelAction = UIAlertAction(title: cancelLabel, style: .cancel, handler: cancelHandler)
        
        alertController.addAction(okAction)
        alertController.addAction(otherOptionAction)
        alertController.addAction(thirdOptionAction)
        alertController.addAction(cancelAction)
        
        targetViewController.present(alertController, animated: true, completion: nil)
        
    }
    
    func showAlertViewWithFourOptions(title alertTitle:String, message alertMessage:String, preferredStyle style: UIAlertController.Style, okLabel: String, otherOptionLabel: String, thirdOptionLabel: String, fourthLabel: String, cancelLabel: String, targetViewController: UIViewController, okHandler: ((UIAlertAction?) -> Void)!, otherOptionHandler: ((UIAlertAction?) -> Void)!, thirdOptionHandler: ((UIAlertAction?) -> Void)!, fourthOptionHandler: ((UIAlertAction?) -> Void)!, cancelHandler: ((UIAlertAction?) -> Void)?) {
        
        let alertController = UIAlertController(title: alertTitle, message: alertMessage, preferredStyle: style)
        let okAction = UIAlertAction(title: okLabel, style: .default, handler: okHandler)
        let otherOptionAction = UIAlertAction(title: otherOptionLabel, style: .default, handler: otherOptionHandler)
        let thirdOptionAction = UIAlertAction(title: thirdOptionLabel, style: .default, handler: thirdOptionHandler)
        let fourthOptionAction = UIAlertAction(title: fourthLabel, style: .destructive, handler: fourthOptionHandler)
        let cancelAction = UIAlertAction(title: cancelLabel, style: .cancel, handler: cancelHandler)
        
        alertController.addAction(okAction)
        alertController.addAction(otherOptionAction)
        alertController.addAction(thirdOptionAction)
        alertController.addAction(fourthOptionAction)
        alertController.addAction(cancelAction)
        
        targetViewController.present(alertController, animated: true, completion: nil)
    }
    
    func showAlertViewWithOption(title alerTitle:String ,message alertMessage:String, preferredStyle style:UIAlertController.Style, okLabel: String,cancelLabel: String, targetViewController: UIViewController,okHandler: ((UIAlertAction?) -> Void)!, cancelHandler: ((UIAlertAction?) -> Void)?) {
        
        let alertController = UIAlertController(title: alerTitle, message: alertMessage, preferredStyle: style)
        let okAction = UIAlertAction(title: okLabel, style: .default, handler: okHandler)
        let cancelAction = UIAlertAction(title: cancelLabel, style: .cancel, handler: cancelHandler)
        
        // Add Actions
        alertController.addAction(okAction)
        alertController.addAction(cancelAction)
        
        // Present Alert Controller
        targetViewController.present(alertController, animated: true, completion: nil)
        
    }
    
    func showAlertViewWithCaution(title alerTitle:String ,message alertMessage:String, preferredStyle style:UIAlertController.Style, okLabel: String,cancelLabel: String, targetViewController: UIViewController,okHandler: ((UIAlertAction?) -> Void)!, cancelHandler: ((UIAlertAction?) -> Void)?) {
        
        let alertController = UIAlertController(title: alerTitle, message: alertMessage, preferredStyle: style)
        let okAction = UIAlertAction(title: okLabel, style: .default, handler: okHandler)
        let cancelAction = UIAlertAction(title: cancelLabel, style: .destructive, handler: cancelHandler)
        
        // Add Actions
        alertController.addAction(okAction)
        alertController.addAction(cancelAction)
        
        // Present Alert Controller
        targetViewController.present(alertController, animated: true, completion: nil)
        
    }
}
