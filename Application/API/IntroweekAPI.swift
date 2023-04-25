//
//  IntroweekAPI.swift
//  IntoweekApp
//

import Foundation
import Combine


class IntroweekAPI {
    
    // MARK: Properties
    private var cancellables: [AnyCancellable] = []

    // MARK: Methods
    func fetchFeed(completion: @escaping (Result<[Post], Error>) -> Void) {
        let url = URL(string: "https://introapi-functionapp-k6j2lqpfqvjp4.azurewebsites.net/api/feed")!
        fetch(type: AllPostsResponse.self, url: url, completion: { result in
            debugPrint(result)
            switch result {
            case .success(let response):
                let feedItems = response.results
                    //.enumerated()
                    //.map({ (i, entity) in
                    //    return Post(
                    //        id: i + 1,
                    //        description: entity.description,
                    //        image: entity.mediaId,
                    //        likeCount: entity.likeCount,
                    //        postStatus: entity.postStatus)
                    //})
                debugPrint(feedItems)
                let posts = [ Post(  id: 1,
                                     description: "w",
                                     image: "w",
                                     likeCount: 3,
                                     postStatus: "w"
                                  )
                            ]
                completion(.success(posts)) //.succes(feedItems)
            case .failure(let error):
                completion(.failure(error))
            }
        })
    }
    
    func fetchUser(id: Int,completion: @escaping (Result<User, Error>) -> Void) {
        let url = URL(string: "https://introapi-functionapp-k6j2lqpfqvjp4.azurewebsites.net/api/\(id)")!
        fetch(type: UserEntity.self, url: url, completion: { result in
            print(result)
            switch result {
            case .success(let response):
                let user = User (
                    id: id,
                    name: response.name,
                    studyAssociation: response.union,
                    role: response.role)
                completion(.success(user))
            case .failure(let error):
                completion(.failure(error))
            }
        })
    }
}

private extension IntroweekAPI {
    
    func fetch<T: Decodable>(type: T.Type, url: URL, completion: @escaping (Result<T, Error>) -> Void) {
        print("Entered the fetch") //REACHES HERE
        URLSession.shared.dataTaskPublisher(for: url)
            .map({ $0.data })
            .decode(type: T.self, decoder: JSONDecoder())
            .receive(on: DispatchQueue.main)
            .sink(
                receiveCompletion: { result in
                    switch result {
                    case .finished:
                        print("Received data from api")
                        break
                    case .failure(let error):
                        print("failed to receive data from api") //WHYYYYY????
                        completion(.failure(error))
                    }
                },
                receiveValue: { response in
                    completion(.success(response))
                }
            )
            .store(in: &cancellables)
    }
}

