//
//  DetailView.swift
//  Guide Book
//
//  Created by Alex Ulanch on 8/19/23.
//

import SwiftUI

struct DetailView: View {
    var attraction: Attraction
    
    var body: some View {
        VStack {
            Image(attraction.imageName)
                .resizable()
                .aspectRatio(contentMode: .fit)
                .cornerRadius(15)
                .padding()
            ScrollView {
                Text(attraction.longDescription)
                
                if let url = URL(string: "maps://?q=\(cleanName(name: attraction.name))&sll=\(cleanCoords(latLong: attraction.latLong))&z=10&t=s") {
                    if UIApplication.shared.canOpenURL(url) {
                        Button {
                            UIApplication.shared.open(url)
                        }label: {
                            ZStack {
                                RoundedRectangle(cornerRadius: 15)
                                    .frame(height: 40)
                                    .foregroundColor(/*@START_MENU_TOKEN@*/.blue/*@END_MENU_TOKEN@*/)
                                Text("Get Directions")
                                    .bold()
                                    .foregroundColor(.white)
                            }
                        }
                        .padding(.vertical)
                    }
                }
            }
            .padding(.horizontal)
        }
        .navigationTitle(attraction.name)
        
    }
    
    func cleanName(name: String) -> String {
        return name.replacingOccurrences(of: " ", with: "")
            .folding(options: .diacriticInsensitive, locale: .current)
    }
    
    func cleanCoords(latLong: String) -> String {
        return latLong.replacingOccurrences(of: " ", with: "")
    }
}

#Preview {
    DetailView(attraction: DataService.getData()[0].attractions[0])
}
