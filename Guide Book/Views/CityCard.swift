//
//  CityCard.swift
//  Guide Book
//
//  Created by Alex Ulanch on 8/19/23.
//

import SwiftUI

struct CityCard: View {
    
    var city: City
    var body: some View {
        ZStack {
            Rectangle()
                .background(content: {
                    Image(city.imageName)
                        .resizable()
                        .aspectRatio(contentMode: .fill)
                })
                .cornerRadius(15)
                .foregroundColor(.clear)
            Rectangle()
                .foregroundColor(.black)
                .opacity(0.3)
                .cornerRadius(15)
            
            VStack(alignment: .leading) {
                Text(city.name)
                    .font(.largeTitle)
                    .bold()
                    .foregroundColor(.white)
                Spacer()
                Text(city.summary)
                    .multilineTextAlignment(/*@START_MENU_TOKEN@*/.leading/*@END_MENU_TOKEN@*/)
                    .foregroundColor(.white)
                    .font(.headline)
            }
            .padding()
        }
        .frame(height: 300)
    }
}

#Preview {
    CityCard(city: DataService.getData()[0])
}
