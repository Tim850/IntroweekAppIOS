//
//  IntroweekStore.swift
//  IntoweekApp
//

import Foundation

class IntroweekStore: ObservableObject {
    
    private let introweekAPI: IntroweekAPI = IntroweekAPI()
    
    @Published var posts: [Post] = []
    
    func loadPosts() {
        introweekAPI.fetchFeed(completion: { result in
            switch result {
            case .success(let posts):
                self.posts = posts
            case .failure(let error):
                print("error: \(error)")
            }
        })
    }
}

