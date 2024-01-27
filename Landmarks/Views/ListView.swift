//
//  ListView.swift
//  Landmarks
//
//  Created by Ong Eason on 27/1/2024.
//

import SwiftUI

struct ListView: View {
    var body: some View {
        
        NavigationStack {
            
            List(allLandmarks) { currentLandmark in
                
                NavigationLink {
                    DetailView(item: currentLandmark)
                } label: {
                    ListItemView(item: currentLandmark)
                }
                
            }
            .navigationTitle("Landmarks")
                        
        }
        
    }
}

#Preview {
    ListView()
}
