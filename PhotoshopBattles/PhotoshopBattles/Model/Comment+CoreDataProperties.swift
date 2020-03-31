//
//  Comment+CoreDataProperties.swift
//  PhotoshopBattles
//
//  Created by Dane Miller on 2020/03/31.
//  Copyright © 2020 Dane Miller. All rights reserved.
//
//

import Foundation
import CoreData


extension Comment {

    @nonobjc public class func fetchRequest() -> NSFetchRequest<Comment> {
        return NSFetchRequest<Comment>(entityName: "Comment")
    }

    @NSManaged public var body: String?
    @NSManaged public var image: Data?
    @NSManaged public var imageUrl: String?
    @NSManaged public var upvotes: Int32
    @NSManaged public var username: String?
    @NSManaged public var post: Post?

}
