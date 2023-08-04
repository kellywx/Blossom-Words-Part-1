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
                VStack {
                    NavigationLink(destination: Food()) {
                         Text("Food")
                            .font(.system(size: 35))
                              
                    }
                    Image("PIZZA")
                        .resizable(resizingMode: .stretch)
                        .aspectRatio(contentMode: .fit)
                    .frame(width: 150, height: 100)
                    .padding(.bottom, 15)
                    
                }
                
            })
                .font(.title)
                .tint(Color("PINK"))
                    .buttonStyle(.borderedProminent)
                    .foregroundColor(Color.black)
            
            Button(action: {
                print("Floating Button Click")
            }, label: {
                VStack{ NavigationLink(destination: Food()) {
                    Text("Sports")
                       .font(.system(size: 32))

   
                }
               Image("BALL")
                   .resizable(resizingMode: .stretch)
                   .aspectRatio(contentMode: .fit)
               .frame(width: 150, height: 100)
               .padding(.bottom, 20)}
               
            })
                .padding(.leading)
                .font(.title)
                .tint(Color("PINK"))
                    .buttonStyle(.borderedProminent)
                    .multilineTextAlignment(.center)
                    .foregroundColor(Color.black)
                    
    
            }
        .padding(.top, 20)
            
            HStack{
                Button(action: {
                    print("Floating Button Click")
                }, label: {
                    VStack {
                        NavigationLink(destination: Food()) {
                             Text("Nature")
                                .font(.system(size: 35))
                                  
                        }
                        Image("PLANT")
                            .resizable(resizingMode: .stretch)
                            .aspectRatio(contentMode: .fit)
                        .frame(width: 150, height: 100)
                        .padding(.bottom, 15)
                        
                    }
                    
                })
                    .font(.title)
                    .tint(Color("PINK"))
                        .buttonStyle(.borderedProminent)
                        .foregroundColor(Color.black)
                
                Button(action: {
                    print("Floating Button Click")
                }, label: {
                    VStack{ NavigationLink(destination: Food()) {
                        Text("Hobby")
                           .font(.system(size: 32))

       
                    }
                   Image("PIANO")
                       .resizable(resizingMode: .stretch)
                       .aspectRatio(contentMode: .fit)
                   .frame(width: 150, height: 100)
                   .padding(.bottom, 20)}
                   
                })
                    .padding(.leading)
                    .font(.title)
                    .tint(Color("PINK"))
                        .buttonStyle(.borderedProminent)
                        .multilineTextAlignment(.center)
                        .foregroundColor(Color.black)
                        
        
                }
            .padding(.top, 20)
            

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
