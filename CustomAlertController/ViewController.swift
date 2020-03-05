//
//  ViewController.swift
//  CustomAlertController
//
//  Created by Anoop M on 2020-03-05.
//  Copyright © 2020 Anoop M. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }

    @IBAction func darkAlert() {
        showAlertDark()
    }
    @IBAction func normalAlert() {
        showAlert()
    }
    @IBAction func normalVerticalAlert() {
        showAlertVertical()
    }
    @IBAction func normalMoreAlert() {
        showAlertMore()
    }
    func showAlert() {

            let cancelAction = Action(with: "Cancel", style: .normal) {[weak self] in
                print("Cancel pressed")
                self?.dismiss(animated: true, completion: nil)
            }
            let deleteAction = Action(with: "Delete", style: .destructive) {[weak self] in
                print("Delete pressed")
                self?.dismiss(animated: true, completion: nil)
            }
            let alertVC = createAlertWithActions(actions: [cancelAction, deleteAction])
            alertVC.modalPresentationStyle = .overCurrentContext
            alertVC.modalTransitionStyle = .crossDissolve
            present(alertVC, animated: true, completion: nil)
    }
    func showAlertMore() {

            let cancelAction = Action(with: "Cancel", style: .normal) {[weak self] in
                print("Cancel pressed")
                self?.dismiss(animated: true, completion: nil)
            }
            let remindAction = Action(with: "Remind", style: .normal) {[weak self] in
                print("Remind pressed")
                self?.dismiss(animated: true, completion: nil)
            }
            let deleteAction = Action(with: "Delete", style: .destructive) {[weak self] in
                print("Delete pressed")
                self?.dismiss(animated: true, completion: nil)
            }
            let alertVC = createAlertVerticalWithActions(actions: [cancelAction, remindAction, deleteAction])
            alertVC.modalPresentationStyle = .overCurrentContext
            alertVC.modalTransitionStyle = .crossDissolve
            present(alertVC, animated: true, completion: nil)
    }
    func showAlertVertical() {

            let cancelAction = Action(with: "Cancel", style: .normal) {[weak self] in
                print("Cancel pressed")
                self?.dismiss(animated: true, completion: nil)
            }
            let deleteAction = Action(with: "Delete", style: .destructive) {[weak self] in
                print("Delete pressed")
                self?.dismiss(animated: true, completion: nil)
            }
            let alertVC = createAlertVerticalWithActions(actions: [cancelAction, deleteAction])
            alertVC.modalPresentationStyle = .overCurrentContext
            alertVC.modalTransitionStyle = .crossDissolve
            present(alertVC, animated: true, completion: nil)
    }
    
    func showAlertDark() {

            let cancelAction = Action(with: "Cancel", style: .normalDark) {[weak self] in
                print("Cancel pressed")
                self?.dismiss(animated: true, completion: nil)
            }
            let deleteAction = Action(with: "Delete", style: .destructiveDark) {[weak self] in
                print("Delete pressed")
                self?.dismiss(animated: true, completion: nil)
            }
            let alertVC = createAlertWithActionsDark(actions: [cancelAction, deleteAction])
            alertVC.modalPresentationStyle = .overCurrentContext
            alertVC.modalTransitionStyle = .crossDissolve
            present(alertVC, animated: true, completion: nil)
    }


    private func createAlertWithActions(actions:[Action]) -> CustomAlertViewController{
        let alertVC = CustomAlertViewController(withTitle: "Do you wish to delete?", message: "This will delete every data you have.", actions: actions, axis: .horizontal)
        return alertVC
    }

    private func createAlertVerticalWithActions(actions:[Action]) -> CustomAlertViewController{
        let alertVC = CustomAlertViewController(withTitle: "Do you wish to delete?", message: "This will delete every data you have.", actions: actions, axis: .vertical)
        return alertVC
    }

    private func createAlertWithActionsDark(actions:[Action]) -> CustomAlertViewController{
        let alertVC = CustomAlertViewController(withTitle: "Do you wish to delete?", message: "This will delete every data you have.", actions: actions, axis: .horizontal, style: .dark)
        return alertVC
    }
}

