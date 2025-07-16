//
//  User.swift
//  Instagramtutorial
//
//  Created by Fayzul Kobir Badal on 7/10/25.
//

import Foundation

struct User: Identifiable, Hashable, Codable {
    let id: String
    var username: String
    var profileImageUrl: String?
    var fullName: String?
    var bio: String?
    var email: String
}

extension User {
    static var MOCK_USERS: [User] = [
        .init(id: NSUUID().uuidString, username: "batman", profileImageUrl: "batman-1", fullName: "Bruce Wayne", bio: "Goatham's Dark Knight", email: "batman@gmail.com"),
        .init(id: NSUUID().uuidString, username: "blackpanther", profileImageUrl: "black-panther-1",fullName: "Uganda King", bio: "Goatham's Dark Knight", email: "plackpanther@gmail.com"),
        .init(id: NSUUID().uuidString, username: "ironman", profileImageUrl: "ironman-1", fullName: "Tonui Stark", bio: "Look at me I am Iron Man", email: "ironman@gmail.com"),
        .init(id: NSUUID().uuidString, username: "venom", profileImageUrl: "venom-1", fullName: "Eddie bruke", bio: "venom", email: "venom@gmail.com"),
        .init(id: NSUUID().uuidString, username: "spiderman", profileImageUrl: "spiderman-1", fullName: "Piter parker", bio: "Unstoppable", email: "spiderman@gmail.com"),
        
    ]
}
