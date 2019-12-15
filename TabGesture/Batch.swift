//
//  Batch.swift
//  TabGesture
//
//  Created by daniel d4 on 13/12/2019.
//  Copyright © 2019 Remi Herbiet. All rights reserved.
//

import SwiftUI

struct Batch: View {
     @State var count = 0
        
        var body: some View {
            NavigationView {
                ZStack(alignment: .bottomTrailing) {
                    List {
                        HStack {
                            ZStack {
                                Image(systemName: "person.circle")
                                    .resizable()
                                    .frame(width: 50, height: 50)
                                if count != 0{
                                    Text("\(count)").padding(6).background(Color.red).clipShape(Circle()).foregroundColor(.white).offset(x: 17, y: -25)
                                    
                                }
                                
                            }
                            Spacer()
                            VStack {
                                Text("Jack Sparrow")
                                    .font(.headline)
                                
                                Spacer(minLength: 10)
                                Text("Are you coming tonight")
                            }
                            Spacer()
                            Text("09:34")
                            
                        }.padding()
                        
                        
                    }.padding()
                    
                    Rectangle()
                        .foregroundColor(.clear)
                        .frame(maxWidth: .infinity, maxHeight: .infinity)
                    Button(action: {
                        self.count += 1
                        
                    }) {
                        Image(systemName: "plus.circle.fill")
                            .resizable()
                            .frame(width: 50, height: 50)
                            .foregroundColor(Color.init(.label))
                            //red: 153/255, green: 102/255, blue: 255/255
                            .shadow(color: .gray, radius: 0.2, x: 1, y: 1)
                        
                        
                        
                        
                    }.padding()
                    
                }
                .onAppear { UITableViewCell.appearance().selectionStyle = .none }
                .navigationBarTitle("Hello IGTV")
                
                
                
            }
            

        }
    }

struct Batch_Previews: PreviewProvider {
    static var previews: some View {
        Batch()
    }
}
