//
//  TableViewController.swift
//  Meal Tracke
//
//  Created by martynov on 2018-01-28.
//  Copyright © 2018 martynov. All rights reserved.
//

import UIKit

class FoodTableViewController: UITableViewController {
    
    var meals: [Meal] {
        
        get {
            //Create three Food objects for the food array on each Meal object. Give each Food item an appropriate name
            //its corresponding meal.
            
            let breakfastFood = [Food(name: "Hum and Eggs", description: "breakfast food"), Food(name: "esspresso", description: "drink")]
            let lunchFood = [Food(name: "Wrap", description: "lunch food"), Food(name: "regular coffee", description: "lunch drink")]
            let dinnerFood = [Food(name: "Pilave", description: "dinner food"), Food(name: "tea", description: " dinner drink")]
            
            let breakfast = Meal(name: "Breakfast", food:  breakfastFood)
            let lunch = Meal(name: "Lunch", food : lunchFood)
            let dinner = Meal(name: "Dinner", food: dinnerFood)
            
            return [breakfast, lunch, dinner]
            
        }
        
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        // Uncomment the following line to preserve selection between presentations
        // self.clearsSelectionOnViewWillAppear = false
        
        // Uncomment the following line to display an Edit button in the navigation bar for this view controller.
        // self.navigationItem.rightBarButtonItem = self.editButtonItem()
    }
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    // MARK: - Table view data source
    
    override func numberOfSections(in tableView: UITableView) -> Int {
        // #warning Incomplete implementation, return the number of sections
        return meals.count
    }
    
    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        // #warning Incomplete implementation, return the number of rows
        return meals[section].food.count
    }
    
    
    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "foodCell", for: indexPath)
        
        // Configure the cell...
        //        In tableView(_:cellForRowAt:), dequeue a cell with the reuse identifier "foodCell."
        //        Access the meal for the row using indexPath.section.
        //        Access the food for the row using indexPath.row.
        //        Update the cell's text label text and detail text label text to be the name and description of the food item.
        //
        let meal = meals[indexPath.section]
        let food = meal.food[indexPath.row]
        cell.textLabel?.text = food.name
        cell.detailTextLabel?.text = food.description
        
        return cell
    }
    
    override func tableView(_ tableView: UITableView, titleForHeaderInSection section: Int) -> String? {

        //        In the tableView(_:titleForHeaderInSection:), return the name of the meal that corresponds to the section.
        
        return meals[section].name

    }
    
    
    
    
}
