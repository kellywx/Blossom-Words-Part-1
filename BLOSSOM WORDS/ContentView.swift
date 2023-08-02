//
//  ContentView.swift
//  BLOSSOM WORDS
//
//  Created by Kelly Wei Jin on 8/1/23.
//

import SwiftUI

struct ContentView: View {
    struct CustomColor {
        static let PINK = Color("PINK")
    }
    var body: some View {
    
        NavigationView{
        VStack {
            Text("Hello user!")
                .font(.largeTitle)
                .fontWeight(.bold)
                .padding(.trailing, 200)
                Text("What do you want to learn today?")
                    .font(.title)
                    .fontWeight(.regular)
                    .padding(.leading, 10)
                    .padding(.top)
        HStack{
            Button(action: {
                print("Floating Button Click")
            }, label: {
                NavigationLink(destination: Food()) {
                     Text("Food")
                        .font(.system(size: 35))
                        .padding(.horizontal, 37)
                        .padding(.bottom, 150)
                        .padding(.top, 10)
    
                 }
            })
    
                .font(.title)
                .padding(.top, 30)
                .padding(.trailing, 20)
                .tint(Color("PINK"))
                    .buttonStyle(.borderedProminent)
                    .multilineTextAlignment(.center)
                    .foregroundColor(Color.black)
            
            Button(action: {
                print("Floating Button Click")
            }, label: {
                NavigationLink(destination: Food()) {
                     Text("Sports")
                        .font(.system(size: 32))
                        .padding(.horizontal, 36)
                        .padding(.bottom, 150)
                        .padding(.top, 10)
    
                 }
            })
    
                .font(.title)
                .padding(.top, 30)
                .tint(Color("PINK"))
                    .buttonStyle(.borderedProminent)
                    .multilineTextAlignment(.center)
                    .foregroundColor(Color.black)
                    
    
            }
            HStack{
                Button(action: {
                    print("Floating Button Click")
                }, label: {
                    NavigationLink(destination: Food()) {
                         Text("Nature")
                            .font(.system(size: 29))
                            .padding(.horizontal, 35)
                            .padding(.bottom, 150)
                            .padding(.top, 10)
        
                     }
                })
        
                    .font(.title)
                    .padding(.top, 30)
                    .padding(.trailing, 12)
                    .tint(Color("PINK"))
                        .buttonStyle(.borderedProminent)
                        .multilineTextAlignment(.center)
                        .foregroundColor(Color.black)
                
                Button(action: {
                    print("Floating Button Click")
                }, label: {
                    NavigationLink(destination: Food()) {
                         Text("Hobbies")
                            .font(.system(size: 29))
                            .padding(.horizontal, 34)
                            .padding(.bottom, 150)
                            .padding(.top, 10)
        
                     }
                })
        
                    .font(.title)
                    .padding(.top, 30)
                    .tint(Color("PINK"))
                        .buttonStyle(.borderedProminent)
                        .multilineTextAlignment(.center)
                        .foregroundColor(Color.black)
                        
        
                }

    }
        .padding(.bottom, 200)
}
    }

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
}
