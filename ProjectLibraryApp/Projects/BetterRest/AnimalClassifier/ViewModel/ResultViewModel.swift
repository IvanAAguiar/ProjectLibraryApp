//
//  ResultViewModel.swift
//  ProjectLibraryApp
//
//  Created by Ivan Aguiar on 07/10/2022.
//

import SwiftUI

class ResultViewModel: ObservableObject {
    
    @ObservedObject var classifier: ClassifierViewModel = ClassifierViewModel()

    var types: [String] =  ["mammal", "bird", "reptile", "fish", "amphibian", "bug", "invertebrate"]

    func showResult() -> (String, String) {
        let predicatedClass = classifier.classify()!.class_type
        let className = types[Int(predicatedClass) - 1]
        let predicatedAccurancy = classifier.classify()!.class_typeProbability[predicatedClass]

        return (className, String(format: "%.2f", predicatedAccurancy! * 100).appending("%"))
    }
    
    func setClassifierInput(input: String, value: Double) {
        classifier.inputs[input] = value
    }
}
