//
//  Login.swift
//  BLOSSOM WORDS
//
//  Created by Eva Tan on 2023-08-03.
//

import SwiftUI

struct Login: View {
    
    @State private var signIN = ""
    @State private var animatingLogo = false
    struct CustomColor {
        static let PINK = Color("PINK")
        static let GREEN = Color("GREEN")
        static let YELLOW = Color("YELLOW")
    }
    
        var body: some View {
                NavigationView {
                    ZStack{
                        CustomColor.YELLOW
                            .ignoresSafeArea()
                        
                        VStack {
                            //                Picture of Logo:
                            
                            Button {
                                withAnimation(.easeInOut(duration:1).repeatCount(5)){animatingLogo.toggle()}

                            } label: { Image ("FLOWER")
                                    .resizable()
                                    .scaledToFit()
                                    .frame(width: 300, height: 300)
                                    .padding(.leading, 25.0)
                                    .scaleEffect(animatingLogo ? 1.5 : 1.0)
                            }
                            
                    
                           
                    
                            
                            //                Sign in Button:
                            NavigationLink(destination: ChooseLanguage()) {
                                Text("Sign In")
                                    .font(.system(size:25))
                                    .font(.headline)
                                    .fontWeight(.bold)
                                    .foregroundColor(Color.gray)
                            }
                            //                Green background around Sign In:
                            .padding(.horizontal, 85.0)
                            .padding(5)
                            .background(CustomColor.GREEN)
                            .cornerRadius(50)
                            
                            //Brown border around Sign In
                            .overlay(
                                RoundedRectangle(cornerRadius:20).stroke(.brown,lineWidth:3)
                            )
                            
                            //                Padding Between Sign In and Sign Up:
                            
                            
                            //                Sign Up Text:
                            Text("Sign Up")
                                .font(.system(size:24))
                                .font(.headline)
                                .fontWeight(.bold)
                                .foregroundColor(Color.gray)
                            
                            //                 Green background around sign out:
                                .padding(.horizontal, 80.0)
                                .padding(5)
                                .background(CustomColor.GREEN)
                                .cornerRadius(50)
                            //                   Brown border around sign out:
                                .overlay(
                                    RoundedRectangle(cornerRadius:20).stroke(.brown, lineWidth:3)
                                )
                                .padding(.vertical, 20)
                            
        //                  Login Icons
                            HStack{
                                Image("INSTAGRAM")
                                    .resizable(resizingMode: .stretch)
                                    .aspectRatio(contentMode: .fit)
                                    .frame(width: 30.0, height: 30.0)
                                    .padding(10)
                                    .background(CustomColor.GREEN)
                                    .cornerRadius(100)
                                
                                    .overlay(
                                        RoundedRectangle(cornerRadius:100).stroke(.brown,lineWidth:3))
                                
                                Image("GMAIL")
                                    .resizable(resizingMode: .stretch)
                                    .aspectRatio(contentMode: .fit)
                                    .frame(width: 30.0, height: 30.0)
                                    .padding(10)
                                    .background(CustomColor.GREEN)
                                    .cornerRadius(100)
                                
                                    .overlay(RoundedRectangle(cornerRadius:100).stroke(.brown,lineWidth:3))
                                
                                Image("TWITTER")
                                    .resizable(resizingMode: .stretch)
                                    .aspectRatio(contentMode: .fit)
                                    .frame(width: 30.0, height: 30.0)
                                    .padding(10)
                                    .background(CustomColor.GREEN)
                                    .cornerRadius(100)
                                
                                    .overlay(RoundedRectangle(cornerRadius:100).stroke(.brown,lineWidth:3))
                                
                            }
                            .padding(.vertical, 20)
                            
                       

                            
                        }
                        
                    }
                }
        }
    }
    
    struct Login_Previews: PreviewProvider {
        static var previews: some View {
            Login()
        }
    }

