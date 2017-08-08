//
//  ViewController.swift
//  MiraclePill
//
//  Created by Jaroslav Bažant on 04.08.17.
//  Copyright © 2017 DewDrops. All rights reserved.
//

import UIKit

class ViewController: UIViewController, UIPickerViewDataSource, UIPickerViewDelegate {

    @IBOutlet weak var cityTextBox: UITextField!
    @IBOutlet weak var streetTxtBox: UITextField!
    @IBOutlet weak var streetLbl: UILabel!
    @IBOutlet weak var cityLabel: UILabel!
    @IBOutlet weak var nameLabel: UILabel!
    @IBOutlet var streetTextBox: UIView!
    @IBOutlet weak var streetLabel: UITextField!
    @IBOutlet weak var nameTextBox: UITextField!
    @IBOutlet weak var cara: UIView!
    @IBOutlet weak var secondLabel: UILabel!
    @IBOutlet weak var firstLabel: UILabel!
    @IBOutlet weak var statePicker: UIPickerView!
    @IBOutlet weak var statePickerBtn: UIButton!
    @IBOutlet weak var stateTextBox: UITextField!
    @IBOutlet weak var stateLabel: UILabel!
    @IBOutlet weak var zipTextBox: UITextField!
    @IBOutlet weak var zipLabel: UILabel!
    @IBOutlet weak var countryTextBox: UITextField!
    @IBOutlet weak var countryLabel: UILabel!
    @IBOutlet weak var buyBtn: UIButton!
    @IBOutlet weak var successImage: UIImageView!
    @IBOutlet weak var pillImage: UIImageView!
    
    let states = ["Alaska", "Alabama", "Arkansas", "New York", "California", "Florida"]
    override func viewDidLoad() {
        super.viewDidLoad()
        statePicker.dataSource = self
        statePicker.delegate = self
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

    @IBAction func stateBtnPressed(_ sender: Any) {
        statePicker.isHidden = false
    }

    func numberOfComponents(in pickerView: UIPickerView) -> Int {
        return 1
    }
    
    func pickerView(_ pickerView: UIPickerView, numberOfRowsInComponent component: Int) -> Int {
        return states.count
    }
    
    func pickerView(_ pickerView: UIPickerView, titleForRow row: Int, forComponent component: Int) -> String? {
        return states[row]
    }
    
    @IBAction func chooseState(_ sender: Any) {
        stateTextBox.isHidden = true
        countryLabel.isHidden = true
        countryTextBox.isHidden = true
        zipLabel.isHidden = true
        zipTextBox.isHidden = true
        buyBtn.isHidden = true
        statePicker.isHidden = false
    }
    
    @IBAction func buyClicked(_ sender: Any) {
        pillImage.isHidden = true
        firstLabel.isHidden = true
        secondLabel.isHidden = true
        cara.isHidden = true
        nameLabel.isHidden = true
        nameTextBox.isHidden = true
        streetLbl.isHidden = true
        streetTxtBox.isHidden = true
        cityLabel.isHidden = true
        cityTextBox.isHidden = true
        stateLabel.isHidden = true
        stateTextBox.isHidden = true
        countryLabel.isHidden = true
        countryTextBox.isHidden = true
        zipLabel.isHidden = true
        zipTextBox.isHidden = true
        buyBtn.isHidden = true
        successImage.isHidden = false
    }
    
    func pickerView(_ pickerView: UIPickerView, didSelectRow row: Int, inComponent component: Int) {
        //statePickerBtn.setTitle(states[row], for: UIControlState.normal)
        stateTextBox.text = states[row]
        statePicker.isHidden = true
        stateTextBox.isHidden = false
        countryLabel.isHidden = false
        countryTextBox.isHidden = false
        zipLabel.isHidden = false
        zipTextBox.isHidden = false
        buyBtn.isHidden = false
    }
}

