//
//  CTLOcrRegisterResponse.swift
//  CTLOcrAI
//
//  Created by Hai Nam on 11/03/2024.
//

import Foundation

public struct CTLOcrRegisterResponse: Decodable {
    var message: String
    var code: Int
    var status: Int
}
