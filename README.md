# Meal-Tracker
Example of using UITableViewDataSource and UITableViewController

Objective
The objective of this lab is to give you a chance to practice with the UITableViewDataSource and UITableViewController. 
You'll create an app that will display a list of foods, grouped into three sections, one for each meal of the day.
Create a new project called "Meal Tracker" using the Single View Application template, and set the device family to Universal.

<h3>Step 1: Set Up the Storyboard</h3>
Delete the UIViewController that comes with the storyboard. Add a UITableViewController from the Object library.<br>
Embed the scene in a navigation controller. Set it as the initial view of the app.<br>
The table view will default to having one prototype cell. Change its Style to Subtitle.<br>
Update the reuse identifier to say "foodCell."<br>
Select the table view, and change its Style to Grouped.<br>
Add a new file called "FoodTableViewController" that subclasses UITableViewController.<br>
Assign that class to the table view controller in your storyboard.<br>

<h3>Step 2: Create Model Objects</h3>
Create two new Swift files. Name one "Meal" and the other "Food."<br>
In the Food file, create a Food struct. Give it two properties, name and description, both of type String.<br>
In the Meal file, create a Meal struct. Give it two properties, name[…]<br>

<h3>Step 3: Implement UITableViewDataSource</h3>
In the FoodTableViewController, remove all the template code except for numberOfSections(in:), 
tableView(_:numberOfRowsInSection:), tableView(_:cellForRowAt:), and tableView(_:titleForHeaderInSection:).

Create a computed property, meals, of type [Meal].<br>
In the body of the property, create three Meal objects. Name them "breakfast," "lunch," and "dinner."<br>
Create three Food objects for the food array on each Meal object. Give each Food item an appropriate name for its 
corresponding meal.
Return the three Meal objects in an array.<br>
In numberOfSections(in:), return the number of meals in your meals array.<br>
In tableView(_:numberOfRowsInSection:), access the meal for the given section, and return the number of food items in that 
meal.<br>

In tableView(_:cellForRowAt:), dequeue a cell with the reuse identifier "foodCell."<br>
Access the meal for the row using indexPath.section.<br>
Access the food for the row using indexPath.row.<br>
Update the cell's text label text and detail text label text to be the name and description of the food item.<br>
In the tableView(_:titleForHeaderInSection:), return the name of the meal that corresponds to the section.<br>

![MealTracker App](https://github.com/oobii/Meal-Tracker/blob/master/MealTracker-TableView-Style-Grouped.png)


  


