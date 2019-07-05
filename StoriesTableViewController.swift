//
//  StoriesTableViewController.swift
//  NewProjectExample
//
//  Created by Pejo on 6/14/19.
//  Copyright © 2019 pejo015. All rights reserved.
//

import UIKit


struct Headline {
    
    var id : Int
    var title : String
    var text : String
    var image : String
    var color: UIColor
}




class StoriesTableViewController: UITableViewController {
   
    override func viewDidLoad() {
        super.viewDidLoad()
        self.tableView.isEditing = true
        
        let nib = UINib(nibName: "HeadlineTableViewCell", bundle: nil)
        
        tableView.register(nib, forCellReuseIdentifier: "HeadlineCell")
    }
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
    
        
    }
    override func tableView(_ tableView: UITableView, shouldIndentWhileEditingRowAt indexPath: IndexPath) -> Bool {
        return false
  
    }

    override func tableView(_ tableView: UITableView, moveRowAt sourceIndexPath: IndexPath, to destinationIndexPath: IndexPath) {
       
        
        let movedObject = self.headlines[sourceIndexPath.row]
        headlines.remove(at: sourceIndexPath.row)
        headlines.insert(movedObject, at: destinationIndexPath.row)
    }

    var headlines = [
        Headline(id: 1, title: "Lorem Ipsum", text: "uistackview two labels.", image: "Apple", color: .red),
        Headline(id: 2, title: "Aenean condimentum", text: "Ut eget massa erat. Morbi mauris diam, vulputate at luctus non.", image: "Banana", color: .orange),
        Headline(id: 3, title: "In ac ante sapien", text: "Aliquam egestas ultricies dapibus. Nam molestie nunc.", image: "Cantaloupe", color: .brown)
    ]
    // MARK: - Table view data source

    override func numberOfSections(in tableView: UITableView) -> Int {
        // #warning Incomplete implementation, return the number of sections
        return 1
    }

    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        
        return headlines.count
    
    }
    

    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "HeadlineCell", for: indexPath) as! HeadlineTableViewCell
        
         cell.headline = headlines[indexPath.row]
        return cell
    }
    
   
    override func tableView(_ tableView: UITableView, estimatedHeightForRowAt indexPath: IndexPath) -> CGFloat {
        return 300
    }
    
    
    override func tableView(_ tableView: UITableView, heightForRowAt indexPath: IndexPath) -> CGFloat {
        return 40
    
      
        
    }
  
    
    
        
    }
    



