//
//  ClassifierQuestionView.swift
//  ProjectLibraryApp
//
//  Created by Ivan Aguiar on 10/10/2022.
//

import SwiftUI

struct ClassifierQuestionView: View {
    let inputName: String
    @StateObject var vm: ResultViewModel
    @State var choosed = false
    
    var body: some View {
        VStack {
            Text(inputName.uppercased())
                .font(.largeTitle)
                .padding()
            VStack (alignment: .leading){
                Text("The animal has?")
                    .font(.headline)
                Image(inputName)
                    .resizable()
                    .scaledToFit()
            }
            if inputName == "legs" {
                HStack (alignment: .center, spacing: 35) {
                    Button("0") {
                        vm.setClassifierInput(input: inputName, value: 0.0)
                        choosed = true
                    }
                    Button("2") {
                        vm.setClassifierInput(input: inputName, value: 2.0)
                        choosed = true
                    }
                    Button("4") {
                        vm.setClassifierInput(input: inputName, value: 4.0)
                        choosed = true
                    }
                    Button("5") {
                        vm.setClassifierInput(input: inputName, value: 5.0)
                        choosed = true
                    }
                    Button("6") {
                        vm.setClassifierInput(input: inputName, value: 6.0)
                        choosed = true
                    }
                    Button("8") {
                        vm.setClassifierInput(input: inputName, value: 8.0)
                        choosed = true
                    }
                }
                .pickerStyle(.segmented)
            } else {
                HStack (alignment: .center, spacing: 150){
                    Button("Yes") {
                        vm.setClassifierInput(input: inputName, value: 1.0)
                        choosed = true

                    }
                    Button("No") {
                        vm.setClassifierInput(input: inputName, value: 0.0)
                        choosed = true
                    }
                }
                .pickerStyle(.segmented)
            }
        }
        .padding()
        .frame(maxWidth: 350, maxHeight: 450)
        .background(.ultraThinMaterial)
        .cornerRadius(10)
        .shadow(radius: 10)
    }
}

struct ClassifierQuestionView_Previews: PreviewProvider {
    static var previews: some View {
        ClassifierQuestionView(inputName: "hair", vm: ResultViewModel())
    }
}
