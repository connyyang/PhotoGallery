//
//  PhotoViewController.swift
//  uitableviewdemo
//
//  Created by Conny Yang on 3/01/2017.
//  Copyright © 2017 Developers Academy. All rights reserved.
//

import UIKit

class PhotoViewController: UIViewController {
    
    var photos : [Photo] = []

    @IBOutlet weak var tableView: UITableView!
    
    
    struct Storyboard
    {
        static let photoCell : String = "PhotoCell"
        
        static let rowHeight : CGFloat = 250.0
    }
    
    
    override func viewDidLoad() {
        super.viewDidLoad()

        tableView.dataSource = self
        
        tableView.rowHeight = Storyboard.rowHeight
        
        photos = Photo.downloadAllPhotos()
        
    }

  

}

extension PhotoViewController : UITableViewDataSource
{
    func numberOfSections(in tableView: UITableView) -> Int {
        return 1
    }
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        print("total line: \(photos.count)")
        return photos.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: Storyboard.photoCell) as! PhotoTableViewCell
        
        let photo = photos[indexPath.row]
        
        print(indexPath.row)
        print(photo.photographImageName)
        
        cell.photo = photo
        
        //cell.textLabel?.text = photo.imageName
        
        return cell
    }
}
