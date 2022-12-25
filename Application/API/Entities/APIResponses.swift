//
//  PostEntity.swift
//  IntoweekApp
//

import Foundation

struct AllPostsResponse: Decodable {
    
    let results: [PostEntity]
}

struct PostEntity: Decodable {
    
    let description: String
    //let date: String
    let mediaId: String
    let postStatus: String
    let likeCount: Int
}

struct UserResponse: Decodable {
    
    let result: UserEntity
}

struct UserEntity: Decodable {
    
    let id: Int
    let name: String
    let union: String
    let role: String
}
