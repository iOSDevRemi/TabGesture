//
//  OneTap.swift
//  TabGesture
//
//  Created by daniel d4 on 06/12/2019.
//  Copyright © 2019 Remi Herbiet. All rights reserved.
//

import SwiftUI

struct OneTap: View {
    
    @State var tapCount = 0.0
    
    var rotationEffect: Angle {
        return Angle(degrees: 360 * tapCount)
    }
    
    var body: some View {
        
        let tapGesture = TapGesture(count: 1)
            .onEnded {
                withAnimation {
                    self.tapCount += 1
                }
        }
        
        return ImageView4()
            .rotationEffect(rotationEffect)
            .gesture(tapGesture)
        
        
    }
}

struct OneTap_Previews: PreviewProvider {
    static var previews: some View {
        OneTap()
    }
}


struct ImageView4: View {
    
    var body: some View {
        HStack {
            Image(systemName: "arrow.down.square.fill")
                .resizable()
                .foregroundColor(Color.purple)
        }.padding()
            .frame(width: 300, height: 300)
    }
    
}
