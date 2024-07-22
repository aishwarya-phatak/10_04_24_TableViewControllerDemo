//
//  ViewController.swift
//  10_04_24_TableViewControllerDemo
//
//  Created by Vishal Jagtap on 22/07/24.
//

import UIKit

class ViewController: UIViewController {
    
    @IBOutlet weak var foodItemsTableView: UITableView!
    
    private let reuseIdentifierForFoodItemTableViewCell = "FoodItemsTableViewCell"
    var foodItemsTitle = ["Upma","Poha","Samosa","VadaPav","Khichadi"]
    var foodItemsPrice = [30.00,30.00,15.00,15.00,30.00]
    var foodItemsDescription = ["Yummy","Yummy","Yummy","Yummy","Yummy"]
    
    var uiNib : UINib?
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
    }
    
    override func viewWillAppear(_ animated: Bool) {
        initViews()
        registerXIB()
    }
    
    private func initViews(){
        foodItemsTableView.delegate = self
        foodItemsTableView.dataSource = self
    }
    
    private func registerXIB(){
        uiNib = UINib(nibName: reuseIdentifierForFoodItemTableViewCell, bundle: nil)
        self.foodItemsTableView.register(uiNib, forCellReuseIdentifier: reuseIdentifierForFoodItemTableViewCell)
    }
}

extension ViewController : UITableViewDataSource{
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        foodItemsTitle.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let foodItemTableViewCell = self.foodItemsTableView.dequeueReusableCell(withIdentifier: reuseIdentifierForFoodItemTableViewCell, for: indexPath) as! FoodItemsTableViewCell
        
        foodItemTableViewCell.foodItemTitle.text = foodItemsTitle[indexPath.row]
        foodItemTableViewCell.foodItemPrice.text = String(foodItemsPrice[indexPath.row])
        foodItemTableViewCell.foodItemDescription.text = foodItemsDescription[indexPath.row]
        
        return foodItemTableViewCell
    }
}


extension ViewController : UITableViewDelegate{
    func tableView(_ tableView: UITableView, heightForRowAt indexPath: IndexPath) -> CGFloat {
        return 105.0
    }
}
