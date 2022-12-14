//
//  AstronautView.swift
//  ProjectLibraryApp
//
//  Created by Ivan Aguiar on 15/10/2022.
//

import SwiftUI

struct AstronautView: View {
    
    let astronaut: Astronaut
    
    var body: some View {
        ScrollView {
            SeparatorComponent()
            VStack{
                Image(astronaut.id)
                    .resizable()
                    .scaledToFit()
                SeparatorComponent()
                Text(astronaut.description)
                    .padding()
            }
        }
        .background(.darkBackground)
        .navigationTitle(astronaut.name)
        .navigationBarTitleDisplayMode(.large)
    }
}

struct AstronautView_Previews: PreviewProvider {
    static let astronauts: [String: Astronaut] = Bundle.main.decode("astronauts.json")
    
    static var previews: some View {
        NavigationView {
            AstronautView(astronaut: astronauts["armstrong"]!)
        }
    }
}
