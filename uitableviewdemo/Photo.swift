//
//  Photo.swift
//  uitableviewdemo
//
//  Created by Conny Yang on 3/01/2017.
//  Copyright © 2017 Developers Academy. All rights reserved.
//

import Foundation

struct Photo
{
    var imageName : String = ""
    var thumbName : String = ""
    var photographImageName : String = ""
    var caption : String = ""
    
    static func downloadAllPhotos() -> [Photo]
    {
        var photos = [Photo]()
        
        for i in 1...10
        {
            let photo = Photo(imageName: "\(i)", thumbName: "t\(i)", photographImageName: "p\(i)", caption: "Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum.")
            
            photos.append(photo)
        }
        
        return photos
    }
}
