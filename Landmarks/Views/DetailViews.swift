//
//  DetailViews.swift
//  Landmarks
//
//  Created by Ong Eason on 27/1/2024.
//

import SwiftUI

struct DetailView: View {
    
        
        //MARK: Stored Properties
        let item: Landmark
        
        //MARK: Computed Properties
    var body: some View {
        ScrollView {
            Image(item.image)
                .resizable()
                .scaledToFit()
            
            HStack {
                Image(systemName: item.isRecommended == true ? "hand.thumbsup.fill" : "hand.thumbsdown")

                    .resizable()
                    .scaledToFit()
                    .frame(height: 20)
                    .padding(5)
                
                Spacer()
            }
            .padding(.horizontal)
            
            Text(item.description)
            .padding(.horizontal)
        }
        .navigationTitle(item.name)
    }
}


#Preview {
    NavigationStack {
        DetailView(item: rom)
    }
}

#Preview {
    NavigationStack {
        DetailView(item: sudburyNickel)
    }
}

