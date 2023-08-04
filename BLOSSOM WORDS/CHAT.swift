//
//  CHAT.swift
//  BLOSSOM WORDS
//
//  Created by Eva Tan on 2023-08-03.
//

import SwiftUI

struct CHAT: View {
    struct CustomColor{
        static let GRAY = Color("GRAY")
       
    }
    var body: some View {
        NavigationView {
            
            ScrollView(.vertical, showsIndicators: false, content: {
                VStack {
                   
                    Circle()
                        .fill(Color.gray)
                        .frame(height:50)
                        .padding(.leading, 300.0)
                    
                    //                Chat and Requests
                    Group{
                        HStack{
                            Text("Chat...")
                                .fontWeight(.bold)
                                .multilineTextAlignment(.leading)
                                .font(.system(size:35))
                                .padding(.leading, 20)
                            
                            Spacer()
                            
                            Text("Requests")
                                .fontWeight(.bold)
                                .foregroundColor(Color.gray)
                                .multilineTextAlignment(.leading)
                                .font(.system(size:35))
                                .padding(.trailing, 20)
                            
                        }
                    }
                    Spacer()
                        .frame(height: 50.0)
                    
           
                    //              Mandarin Circle
                    Group{
                        
                        Text("Mandarin")
                            .fontWeight(.semibold)
                            .font(.system(size:20))
                            .padding(.trailing, 250)
                     
                        HStack{
                            NavigationLink(destination: OPENCHAT()) {
                                Circle()
                                    .fill(Color.gray)
                                    .frame(height: 80.0)
                                    .overlay(
                                        RoundedRectangle(cornerRadius:100)
                                            .stroke(lineWidth: 1)
                                            .foregroundColor(.white)
                                            .shadow(color: .black, radius: 3))
                                    .padding(.trailing, 208)
                                
                                Text("Sent")
                                    .foregroundColor(Color.gray)
                                
                            }
                        }
                        
                    }
                        
                        
                        //    Mandarin Circle Dots
                        
                        Group{
                            Circle()
                                .fill(Color.gray)
                                .frame(height:5)
                                .padding(.trailing, 250)
                            
                            Circle()
                                .fill(Color.gray)
                                .frame(height:5)
                                .padding(.trailing, 250)
                        }
                    
                    
                    //                Italian Circle
                    Group{
                        
                        Text("Italian")
                            .fontWeight(.regular)
                            .font(.system(size:20))
                            .padding(.trailing, 250)
                        HStack{
                            Circle()
                                .fill(CustomColor.GRAY)
                                .frame(height: 80.0)
                                .overlay(RoundedRectangle(cornerRadius:100)
                                    .stroke(lineWidth: 1)
                                    .foregroundColor(.white)
                                    .shadow(color: .gray, radius: 2))
                                .padding(5)
                                .padding(.trailing, 208)
                            
                            Text("Sent")
                                .foregroundColor(Color.gray)
                        }
                        Circle()
                            .fill(CustomColor.GRAY)
                            .frame(height:5)
                            .padding(.trailing, 250)
                        
                        Circle()
                            .fill(CustomColor.GRAY)
                            .frame(height:5)
                            .padding(.trailing, 250)
                        
                    }
                    
                    //                Spanish Circle
                    Group{
                        
                        Text("Spanish")
                            .fontWeight(.regular)
                            .font(.system(size:20))
                            .padding(.trailing, 250)
                        HStack{
                            Circle()
                                .fill(CustomColor.GRAY)
                                .frame(height: 80.0)
                                .overlay(RoundedRectangle(cornerRadius:100)
                                    .stroke(lineWidth: 1)
                                    .foregroundColor(.white)
                                    .shadow(color: .gray, radius: 2))
                                .padding(5)
                                .padding(.trailing, 208)
                            
                            Text("Read")
                                .foregroundColor(Color.gray)
                        }
                        Circle()
                            .fill(CustomColor.GRAY)
                            .frame(height:5)
                            .padding(.trailing, 250)
                        
                        Circle()
                            .fill(CustomColor.GRAY)
                            .frame(height:5)
                            .padding(.trailing, 250)
                        
                    }
                    
                    //                French Circle
                    Group{
                        
                        Text("French")
                            .fontWeight(.regular)
                            .font(.system(size:20))
                            .padding(.trailing, 250)
                        HStack{
                            Circle()
                                .fill(CustomColor.GRAY)
                                .frame(height: 80.0)
                                .overlay(RoundedRectangle(cornerRadius:100)
                                    .stroke(lineWidth: 1)
                                    .foregroundColor(.white)
                                    .shadow(color: .gray, radius: 2))
                                .padding(5)
                                .padding(.trailing, 208)
                            
                            Text("Read")
                                .foregroundColor(Color.gray)
                            
                        }
                        Circle()
                            .fill(CustomColor.GRAY)
                            .frame(height:5)
                            .padding(.trailing, 250)
                        
                        Circle()
                            .fill(CustomColor.GRAY)
                            .frame(height:5)
                            .padding(.trailing, 250)
                    }
                    
     
                }
                
                
                
            })
        }
    }
}
    
struct CHAT_Previews: PreviewProvider {
    static var previews: some View {
        CHAT()
    }
}
