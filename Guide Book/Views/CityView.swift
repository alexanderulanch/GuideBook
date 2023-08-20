//
//  ContentView.swift
//  Guide Book
//
//  Created by Alex Ulanch on 8/19/23.
//

import SwiftUI

struct CityView: View {
    @State var cities = [City]()
    var body: some View {
        NavigationStack {
            ScrollView(showsIndicators: false) {
                VStack {
                    ForEach(cities) { city in
                        NavigationLink {
                            AttractionView(city: city)
                        } label: {
                            CityCard(city: city)
                        }
                        .padding(.bottom, 10)
                    }
                }
            }
            .padding()
            .navigationTitle("Cities")
        }
        .onAppear(perform: {
            cities = DataService.getJSONData()
        })
    }
}

#Preview {
    CityView()
}
