//
//  CTLOcrFDUseCase.swift
//  CTLOcrAI
//
//  Created by Hai Nam on 11/03/2024.
//

import Foundation


public enum CTLOcrFaceDetectUseCase {
    
    case registerFace
    case predictFace
    case showCheckin
    case filterCheckin
    case getInfo
    case updateInfo
    case fasPredict
    case compareFace
    
    var responseClass: Decodable.Type {
            switch self {
            case .registerFace:
                return CTLOcrRegisterResponse.self
            case .predictFace:
                return CTLOcrPredictResponse.self
            case .showCheckin, .filterCheckin, .getInfo, .updateInfo, .fasPredict, .compareFace:
                return CTLOcrRegisterResponse.self
            }
        }
    
    var URLPath: String? {
        switch self {
        case .registerFace:
            return "ai/face/register"
        case .predictFace:
            return "ai/face/predict"
        case .showCheckin:
            return "ai/face/show_checkin_history"
        case .filterCheckin:
            return "ai/face/filter"
        case .getInfo:
            return "ai/face/get_info"
        case .updateInfo:
            return "ai/face/update_info"
        case .fasPredict:
            return "ai/face/fas_predict"
        case .compareFace:
            return"ai/face/compare"
        }
    }
    
}

