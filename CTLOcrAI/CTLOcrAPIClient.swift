//
//  CTLOcrAPICaller.swift
//  CTLOcrAI
//
//  Created by Hai Nam on 08/03/2024.
//

import Foundation
import Alamofire

public class CTLOcrAPIClient: CTLOcrIClient{
    
    private var URL: String!
    let decoder: JSONDecoder = {
        let decoder = JSONDecoder()
        decoder.keyDecodingStrategy = .convertFromSnakeCase
        return decoder
    }()
    
    func setURL(URL: String) {
        self.URL = URL
    }
    
    func fetch<T>(returnType: T.Type, path: String, completion: @escaping (Result<T, Error>) -> Void) where T : Decodable {
        AF.request(URL + path)
            .responseDecodable(of:T.self, decoder: decoder) { response in
                switch response.result {
                case .success(let data):
                    completion(.success(data))
                case .failure(let error):
                    completion(.failure(error))
                }
            }
    }
    
}
