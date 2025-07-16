//
//  Post.swift
//  Instagramtutorial
//
//  Created by Fayzul Kobir Badal on 7/12/25.
//

import Foundation

struct Post:Identifiable, Hashable, Codable{
    let id: String
    let ownerUid: String
    let caption: String
    let likes: Int
    let imageUrl: String
    let timestamp: Date
    let user: User?
}

extension Post{
    static var MOCK_POSTS: [Post] =  [
        
        .init(
            id: NSUUID().uuidString,
            ownerUid: NSUUID().uuidString,
            caption: "This is my first caption for now",
            likes: 123,
            imageUrl: "batman-1",
            timestamp: Date(),
            user: User.MOCK_USERS[0]
        ),
        .init(
            id: NSUUID().uuidString,
            ownerUid: NSUUID().uuidString,
            caption: "wakanda forever",
            likes: 104,
            imageUrl: "black-panther-1",
            timestamp: Date(),
            user: User.MOCK_USERS[1]
        ),
        .init(
            id: NSUUID().uuidString,
            ownerUid: NSUUID().uuidString,
            caption: "Ironman is awesome",
            likes: 124,
            imageUrl: "ironman-1",
            timestamp: Date(),
            user: User.MOCK_USERS[2]
        ),
        .init(
            id: NSUUID().uuidString,
            ownerUid: NSUUID().uuidString,
            caption: "Venom is hungry. Time to eat",
            likes: 120,
            imageUrl:"venom-1",
            timestamp: Date(),
            user: User.MOCK_USERS[3]
        ),
        .init(
            id: NSUUID().uuidString,
            ownerUid: NSUUID().uuidString,
            caption: "Spiderman is so speedy",
            likes: 10,
            imageUrl:"spiderman-1",
            timestamp: Date(),
            user: User.MOCK_USERS[4]
        )
    ]
    }
