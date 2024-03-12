//
//  ViewController.swift
//  CTLOcrAIDemo
//
//  Created by Hai Nam on 12/03/2024.
//

import UIKit
import CTLOcrAI

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        let tmp = CTLOcrFDClient()
        tmp.fetch(CTLOcrFaceDetectUseCase.registerFace, dataType: CTLOcrRegisterResponse.self)
    }


}

