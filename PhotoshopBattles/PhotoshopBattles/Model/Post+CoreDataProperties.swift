//
//  Post+CoreDataProperties.swift
//  PhotoshopBattles
//
//  Created by Dane Miller on 2020/03/31.
//  Copyright © 2020 Dane Miller. All rights reserved.
//
//

import Foundation
import CoreData


extension Post {

    @nonobjc public class func fetchRequest() -> NSFetchRequest<Post> {
        return NSFetchRequest<Post>(entityName: "Post")
    }

    @NSManaged public var image: Data?
    @NSManaged public var imageUrl: String?
    @NSManaged public var title: String?
    @NSManaged public var upvotes: Int32
    @NSManaged public var url: String?
    @NSManaged public var username: String?
    @NSManaged public var comments: NSSet?

}

// MARK: Generated accessors for comments
extension Post {

    @objc(addCommentsObject:)
    @NSManaged public func addToComments(_ value: Comment)

    @objc(removeCommentsObject:)
    @NSManaged public func removeFromComments(_ value: Comment)

    @objc(addComments:)
    @NSManaged public func addToComments(_ values: NSSet)

    @objc(removeComments:)
    @NSManaged public func removeFromComments(_ values: NSSet)

}
