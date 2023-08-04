//
//  ChooseLanguage.swift
//  BLOSSOM WORDS
//
//  Created by Eva Tan on 2023-08-03.
//

import SwiftUI

struct ChooseLanguage: View {
    struct CustomColor{
        static let PINK = Color("PINK")
        static let YELLOW = Color("YELLOW")
        static let GREEN = Color("GREEN")
        static let YELLOOW = Color("YELLOW")
    }
    var body: some View {
        NavigationView{

                VStack {
                    //                TITLE
                    Group{
                        Text("What Language Are \nYou Learning\nToday?")
                            .font(.system(size:40))
                            .font(.title)
                            .fontWeight(.bold)
                            .multilineTextAlignment(.leading)
                            .padding(.horizontal, 10.0)
                            .fixedSize(horizontal: false, vertical: true)
                        
                        
                        Spacer()
                            .frame(width: 20.0, height: 50)
                    }
                    
                    //                Mandarin
                    Group{
                        NavigationLink(destination: ContentView()) {
                            Text("MANDARIN")
                                .font(.system(size:35))
                                .font(.subheadline)
                                .fontWeight(.medium)
                                .foregroundColor(Color.black)
                        }
                        .padding(.horizontal, 75)
                        .padding(8)
                        .background(CustomColor.PINK)
                        .cornerRadius(50)
                        .overlay(
                            RoundedRectangle(cornerRadius:100).stroke(CustomColor.GREEN, lineWidth:3)
                        )
                    }
                    
                    Spacer()
                        .frame(width: 20.0, height: 30.0)
                    
                    Text("FRENCH")
                        .font(.system(size:35))
                        .font(.subheadline)
                        .fontWeight(.medium)
                        .foregroundColor(Color.black)
                        .padding(.horizontal, 102)
                        .padding(.vertical, 8)
                        .background(CustomColor.PINK)
                        .cornerRadius(50)
                        .overlay(
                            RoundedRectangle(cornerRadius:100).stroke(CustomColor.GREEN, lineWidth:3)
                        )
                    
                    Spacer()
                        .frame(width: 20.0, height: 30.0)
                    Text("ITALIAN")
                        .font(.system(size:35))
                        .font(.subheadline)
                        .fontWeight(.medium)
                        .foregroundColor(Color.black)
                        .padding(.horizontal, 105)
                        .padding(8)
                        .background(CustomColor.PINK)
                        .cornerRadius(50)
                        .overlay(
                            RoundedRectangle(cornerRadius:100).stroke(CustomColor.GREEN, lineWidth:3)
                        )
                    
                    Spacer()
                        .frame(width: 20.0, height: 30.0)
                    
                    Text("SPANISH")
                        .font(.system(size:35))
                        .font(.subheadline)
                        .fontWeight(.medium)
                        .foregroundColor(Color.black)
                        .padding(.horizontal, 95)
                        .padding(8)
                        .background(CustomColor.PINK)
                        .cornerRadius(50)
                        .overlay(
                            RoundedRectangle(cornerRadius:100).stroke(CustomColor.GREEN, lineWidth:3)
                        )
                    Spacer()
                    
                        .frame(height: 140)
                    
                    Rectangle()
                        .fill(CustomColor.YELLOOW)
                        .ignoresSafeArea()
                     

                }
                .padding(.top, 50.0)
           
          
                
                
            }
        }
    }


struct ChooseLanguage_Previews: PreviewProvider {
    static var previews: some View {
        ChooseLanguage()
    }
}
