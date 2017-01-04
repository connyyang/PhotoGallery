//
//  PhotoTableViewCell.swift
//  uitableviewdemo
//
//  Created by Conny Yang on 3/01/2017.
//  Copyright © 2017 Developers Academy. All rights reserved.
//

import UIKit

class PhotoTableViewCell: UITableViewCell {

    @IBOutlet weak var photoImage: UIImageView!
    
    
    @IBOutlet weak var imageCaption: UILabel!
    
    @IBOutlet weak var photographImage: UIImageView!
    

    var photo: Photo!
    {
        didSet
        {
            updateUI()
        }
    }
    
    private func updateUI()
    {
        photoImage.image = UIImage(named: photo.imageName)
        
        imageCaption.text = photo.caption
        
        photographImage.image = UIImage(named: photo.photographImageName)
        
        photographImage.layer.cornerRadius = photographImage.bounds.width / 2.0
        
        photographImage.layer.masksToBounds = true
        
        photographImage.layer.borderWidth = 0.5
        
        photographImage.layer.borderColor = UIColor.lightGray.withAlphaComponent(0.6).cgColor
        
        photographImage.layer.shadowOffset = CGSize(width: 0, height: 0)
        
        photographImage.layer.shadowOpacity = 1
        
        photographImage.layer.shadowRadius = 6
        
        imageCaption.layer.shadowOffset = CGSize(width: 0, height: 0)
        
        imageCaption.layer.shadowOpacity = 1
        
        imageCaption.layer.shadowRadius = 6
    }
}
