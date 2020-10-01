//
//  Friend.swift
//  Friends Face
//
//  Created by RANGA REDDY NUKALA on 01/10/20.
//

import Foundation

struct Friend: Codable, Identifiable {
    let id: String?
    let name: String?
    
    enum CodingKeys: String, CodingKey {

        case id = "id"
        case name = "name"
    }

    init(from decoder: Decoder) throws {
        let values = try decoder.container(keyedBy: CodingKeys.self)
        id = try values.decodeIfPresent(String.self, forKey: .id)
        name = try values.decodeIfPresent(String.self, forKey: .name)
    }
}
