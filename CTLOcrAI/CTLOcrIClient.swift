//
//  CTLOcrIClient.swift
//  CTLOcrAI
//
//  Created by Hai Nam on 11/03/2024.
//

import Foundation

protocol CTLOcrIClient {
    func setURL(URL: String)
    func fetch<T: Decodable>(returnType: T.Type, path: String, completion: @escaping(Result<T, Error>) -> Void)
}
