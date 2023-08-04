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
        static let YELLOW = Color("YELLOW")
    }
    var body: some View {
        
        NavigationView{
            VStack {
                Text("Hello user!")
                    .font(.largeTitle)
                    .fontWeight(.bold)
                    .padding(.trailing, 200)
                    .padding(.top, 100)
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

                
                ZStack{
                  Rectangle()
                        .fill(CustomColor.YELLOW)
                    
                    HStack{
                        NavigationLink(destination: ContentView()) {
                            Image("HOUSE")
                                .resizable()
                                .scaledToFit()
                                .frame(width: 50, height: 50)
                                .padding(.bottom, 20)
                                .padding(.trailing, 5)
                            
                            NavigationLink(destination: CHAT()) {
                                Image("MESSAGE")
                                    .resizable()
                                    .scaledToFit()
                                    .frame(width: 50, height: 50)
                                    .padding(.bottom, 20)
                                    .padding(.leading, 25)
                                
                                
                                NavigationLink(destination: Login()) {
                                    Image("G")
                                        .resizable()
                                        .scaledToFit()
                                        .frame(width: 30, height: 30)
                                        .padding(.bottom, 23)
                                        .padding(.leading, 40)
                                    
                                    NavigationLink(destination: Login()) {
                                        Image("QUESTIONS")
                                            .resizable()
                                            .scaledToFit()
                                            .frame(width: 30, height: 30)
                                            .padding(.bottom, 23)
                                            .padding(.leading, 40)
                                        
                                    }
                                }
                                
                            }
                            
                        }
                        .padding(.top, 30)
                      
                        
                    }
    
                }
                    .padding(.top, 50.0)
                    
                }
                
                    
                    
                    
                }
            }
        }
    
struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}

