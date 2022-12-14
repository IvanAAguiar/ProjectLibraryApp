//
//  Articles_Table_View.swift
//  ProjectLibraryApp
//
//  Created by Ivan Aguiar on 29/09/2022.
//

import SwiftUI

struct Articles_Table_View: View {
    
    @ObservedObject var vm: ArticleListViewModel
    
    var body: some View {
        ZStack {
            VStack {
                Text("Explaining climate science, impacts, and adaptation through maps, graphs, and other data visualizations.")
                    .padding(1)
                List (vm.articles2021, id: \.id) { item in
                    NavigationLink(destination: ArticleView(article: item), label: {
                        ListRowView(article: item)
                    })
                }
                .listStyle(.plain)
                .navigationTitle("Articles from NOAA")
            }
        }
    }
}

struct Articles_Table_View_Previews: PreviewProvider {
    static var previews: some View {
        Articles_Table_View(vm: ArticleListViewModel())
    }
}
