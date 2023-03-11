//
//  InputMoneyController.swift
//  manageMoneyStoryboard
//
//  Created by PC156 on 2023/03/10.
//

import Foundation
import UIKit
class InputMoneyController : UIViewController{
    @IBOutlet var Button: UIButton!
    @IBOutlet var inputmoney : UITextField!
    @IBOutlet var selectKind : UISegmentedControl!
    @IBOutlet var selectList : UIButton!
    var incomeList = ["月給","副業"]
    var spendingList = ["食費","交通費","通信費","医療費","その他"]
    
    private var incomeSelectedItemIndex = 0
    private var spendingSelectedItemIndex = 0

    override func viewDidLoad() {
        super.viewDidLoad()
        
        selectList.addTarget(self, action: #selector(pulldownList), for: .allEvents)
        pulldownList()
    }
    //selectList.setTitle(selectKind.selectedSegmentIndex == 0  && !selectList.isSelected ? incomeList[incomeSelectedItemIndex] : spendingList[spendingSelectedItemIndex], for: .normal)
    
    @objc func pulldownList() {
        print("1")
        let items = UIMenu(title: "", options: .displayInline, children: makingItems(index: selectKind.selectedSegmentIndex)
        )
        print("2")
        selectList.menu = items
        selectList.showsMenuAsPrimaryAction = true
        selectList.setTitle(selectKind.selectedSegmentIndex == 0  && !selectList.isHidden ? incomeList[incomeSelectedItemIndex] : spendingList[spendingSelectedItemIndex], for: .normal)
        print("3")
    }
    func makingItems(index: Int) -> [UIAction]{
        var list : Array<UIAction> = []
        if (index == 0){
            for (index, incomeitem) in incomeList.enumerated() {
                list.append(UIAction(title: incomeitem, image: UIImage(systemName: "dollarsign.circle"),  handler: {_ in
                    self.incomeSelectedItemIndex = index
                    print("incomeSelctedItemindex ; \(self.incomeSelectedItemIndex)")
                }))}
            return list
        } else {
            for (index, spendingitem) in spendingList.enumerated() {
                list.append( UIAction(title: spendingitem, image: UIImage(systemName: "dollarsign.circle"), handler: {_ in
                    self.spendingSelectedItemIndex = index
                    print("spendingSelectedItemIndex ; \(self.spendingSelectedItemIndex)")
                    }
                )
                )
            }
            
            return list
        
        }
    }
}
