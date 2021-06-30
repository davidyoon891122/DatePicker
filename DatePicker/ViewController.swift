//
//  ViewController.swift
//  DatePicker
//
//  Created by David Yoon on 2021/06/30.
//

import UIKit

class ViewController: UIViewController {
    @IBOutlet var lblCurrentTime: UILabel!
    @IBOutlet var lblPickerTime: UILabel!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }

    @IBAction func changeDatePicker(_ sender: UIDatePicker) {
        let datePickerView = sender // sender UIDatePicker 객체
        
        let formatter = DateFormatter() // DateFormatter 객체
        
        formatter.dateFormat = "yyyy-MM-dd HH:mm EEE" // dateFormat 설정 년-월-일 시간:분 요일
        
        lblPickerTime.text = "선택시간: " + formatter.string(from: datePickerView.date) // label에 선택 시간 포멧에 넣어서 넘겨줌
    }
    
}

