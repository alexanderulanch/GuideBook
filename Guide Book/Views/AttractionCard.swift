//
//  AttractionCard.swift
//  Guide Book
//
//  Created by Alex Ulanch on 8/19/23.
//

import SwiftUI

struct AttractionCard: View {
    
    var attraction: Attraction
    
    var body: some View {
        ZStack {
            Rectangle()
                .background(content: {
                    Image(attraction.imageName)
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
                Text(attraction.name)
                    .font(.largeTitle)
                    .bold()
                    .foregroundColor(.white)
                    .padding(.bottom, 10)
                Spacer()
                Text(attraction.summary)
                    .multilineTextAlignment(/*@START_MENU_TOKEN@*/.leading/*@END_MENU_TOKEN@*/)
                    .foregroundColor(.white)
                    .font(.headline)
            }
            .padding()
        }
        .frame(height: 200)
    }
}

#Preview {
    AttractionCard(attraction: DataService.getData()[0].attractions[0])
}
