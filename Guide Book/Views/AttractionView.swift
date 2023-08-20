//
//  AttractionView.swift
//  Guide Book
//
//  Created by Alex Ulanch on 8/19/23.
//

import SwiftUI

struct AttractionView: View {
    
    var city: City
    var body: some View {
        ScrollView(showsIndicators: false) {
            VStack {
                ForEach(city.attractions) { attraction in
                    NavigationLink {
                        DetailView(attraction: attraction)
                    } label: {
                        AttractionCard(attraction: attraction)
                    }
                    .padding(.bottom)
                }
            }
        }
        .navigationTitle("Attractions")
        .padding()
    }
}

#Preview {
    AttractionView(city: DataService.getData()[0])
}
