//
//  HikeCel.swift
//  hiking
//
//  Created by Ricky Primayuda Putra on 05/10/24.
//

import SwiftUI

struct HikeCell: View {
    
    let hike: Hike
    
    var body: some View {
        HStack (alignment: .center) {
            Image(hike.photo)
                .resizable()
                .aspectRatio(contentMode: .fit)
                .clipShape(RoundedRectangle(cornerRadius: 10, style: .continuous))
                .frame(width: 100)
            
            VStack(alignment: .leading) {
                Text(hike.name)
                Text("\(hike.miles.formatted()) miles")
            }
        }
    }
}
