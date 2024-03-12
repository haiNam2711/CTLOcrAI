//
//  CTLOcrFaceResource.swift
//  CTLOcrAI
//
//  Created by Hai Nam on 08/03/2024.
//

import Foundation

public class CTLOcrFDClient {
    
    var baseClient: CTLOcrIClient!
    
    public init() {
        self.baseClient = CTLOcrAPIClient()
        baseClient.setURL(URL: "https://computervision.admicro.vn/")
    }
    
    public func fetch<T:Decodable>(_ useCase: CTLOcrFaceDetectUseCase, dataType: T.Type) {
        baseClient.fetch(returnType: T.self, path: useCase.URLPath!) { response in
            print(response)
        }
    }
    
}
