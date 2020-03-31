//
//  Comment+CoreDataClass.swift
//  PhotoshopBattles
//
//  Created by Dane Miller on 2020/03/31.
//  Copyright © 2020 Dane Miller. All rights reserved.
//
//

import Foundation
import CoreData

@objc(Comment)
public class Comment: NSManagedObject {
    convenience init(username : String = "Anon", body: String = "Comment", url : String, imageUrl : String, image : Data? = nil, upvotes: Int32,  context : NSManagedObject) {
        
        if let ent = NSEntityDescription.entity(forEntityName: "Post", in: context) {
            print("Post in \(context.concurrencyType.rawValue)")
            self.init(entity: ent, insertInto: context)
            self.username = username
            self.body = body
            self.imageUrl = imageUrl
            self.upvotes = upvotes
            if let img = image{
                self.image = img as NSData
            }
        } else {
            fatalError("Unable to find Entity name!")
        }
        
        
    }
}
