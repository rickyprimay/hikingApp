//
//  ContentView.swift
//  hiking
//
//  Created by Ricky Primayuda Putra on 05/10/24.
//

import SwiftUI

struct ContentView: View {
    
    let hikes = [
        Hike(name: "Salmonberry Trail", photo: "sal", miles: 6),
        Hike(name: "Tom, Dick, and Harry Mountain", photo: "tom", miles: 5.8),
        Hike(name: "Tamanawas Falls", photo: "tam", miles: 4.2)
    ]
    
    var body: some View {
        NavigationStack{
            List(hikes) { hike in
                NavigationLink(value: hike) {
                    HikeCell(hike: hike)
                }
                
            }
            .navigationTitle("Hiking app")
            .navigationDestination(for: Hike.self) { hike in
                HikeDetailScreen(hike: hike)
            }
        }
    }
}

#Preview {
    ContentView()
}
