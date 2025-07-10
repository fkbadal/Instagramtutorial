//
//  User.swift
//  Instagramtutorial
//
//  Created by Fayzul Kobir Badal on 7/10/25.
//

import Foundation
struct User: Identifiable,Codable {
    let id: String
    var username: String
    var profileImageUrl: String?
    var fullName: String?
    var bio: String?
    var email: String
}

extension User {
    static var MOCK_USER: [User] = [
        .init(
            id: NSUUID().uuidString,
            username: "batman",
            profileImageUrl: "batman-2",
            fullName: "Bruce Wayne",
            bio: "Goatham's Dark Knight",
            email: "batman@gmail.com"
        ),
        .init(
            id: NSUUID().uuidString,
            username: "venom",
            profileImageUrl: "venom-2",
            fullName: "Eddie bruke",
            bio: "venom",
            email: "venom@gmail.com"
        ),
        .init(
            id: NSUUID().uuidString,
            username: "blackpanther",
            profileImageUrl: "black-panther-2",
            fullName: "Uganda King",
            bio: "Goatham's Dark Knight",
            email: "plackpanther@gmail.com"
        ),
        .init(
            id: NSUUID().uuidString,
            username: "spiderman",
            profileImageUrl: "spiderman-2",
            fullName: "Piter parker",
            bio: "Unstoppable",
            email: "spiderman@gmail.com"
        )
    ]
}
