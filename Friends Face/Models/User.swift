//
//  User.swift
//  Friends Face
//
//  Created by RANGA REDDY NUKALA on 01/10/20.
//

import Foundation

struct User : Codable, Identifiable {
    let id : String?
    let isActive : Bool?
    let name : String?
    let age : Int?
    let company : String?
    let email : String?
    let address : String?
    let about : String?
    let registered : String?
    let tags : [String]?
    let friends : [Friend]?

    enum CodingKeys: String, CodingKey {

        case id = "id"
        case isActive = "isActive"
        case name = "name"
        case age = "age"
        case company = "company"
        case email = "email"
        case address = "address"
        case about = "about"
        case registered = "registered"
        case tags = "tags"
        case friends = "friends"
    }

    init(from decoder: Decoder) throws {
        let values = try decoder.container(keyedBy: CodingKeys.self)
        id = try values.decodeIfPresent(String.self, forKey: .id)
        isActive = try values.decodeIfPresent(Bool.self, forKey: .isActive)
        name = try values.decodeIfPresent(String.self, forKey: .name)
        age = try values.decodeIfPresent(Int.self, forKey: .age)
        company = try values.decodeIfPresent(String.self, forKey: .company)
        email = try values.decodeIfPresent(String.self, forKey: .email)
        address = try values.decodeIfPresent(String.self, forKey: .address)
        about = try values.decodeIfPresent(String.self, forKey: .about)
        registered = try values.decodeIfPresent(String.self, forKey: .registered)
        tags = try values.decodeIfPresent([String].self, forKey: .tags)
        friends = try values.decodeIfPresent([Friend].self, forKey: .friends)
    }

}

