//
//  OPENCHAT.swift
//  BLOSSOM WORDS
//
//  Created by Eva Tan on 2023-08-03.
//

import SwiftUI

struct OPENCHAT: View {
    @State private var answer = ""
    @State private var textField = "Message..."
    @State var sent = ""
    
    struct CustomColor{
        static let GRAY = Color("GRAY")
       static let LGRAY = Color("LGRAY")
        static let YELLOW = Color("YELLOW")
        static let GREEN = Color("GREEN")
    }
      
    var body: some View {
    
        VStack{
            //            Top
            Group{
                HStack{
                    
                    Circle()
                        .fill(.gray)
                        .frame(height: 80.0)
                        .overlay(RoundedRectangle(cornerRadius:100)
                            .stroke(lineWidth: 1)
                            .foregroundColor(.white)
                            .shadow(color: .gray, radius: 2))
                        .padding(.leading, 30.0)
                    
                    VStack{
                        Text("Christen")
                            .fontWeight(.bold)
                            .font(.system(size:25))
                        Text("From China")
                    }
                    Spacer()
                    
                    Circle()
                        .fill(Color.gray)
                        .frame(height:50)
                    
                }
                .padding(.trailing, 30.0)
            }
            
            //            Conversation
            Group{
            Spacer()
                    
            HStack{
                    Circle()
                        .fill(CustomColor.GRAY)
                        .frame(height: 40)
                        .padding(.trailing, 2)
                
                    Rectangle()
                        .fill(CustomColor.LGRAY)
                        .frame(width: 275, height:100)
                        .cornerRadius(25)
                }
    
                Spacer()
                    .frame(height: 30.0)
                
                HStack{
                    
                    Rectangle()
                        .fill(CustomColor.LGRAY)
                        .frame(width: 275, height:100)
                        .cornerRadius(25)
                    
                    Circle()
                        .fill(CustomColor.GRAY)
                        .frame(height: 40)
                        .padding(.trailing, 2)
                    
                }
           
                Spacer()
                    .frame(width: 0,height: 30)
                
                HStack{
                    Circle()
                        .fill(CustomColor.GRAY)
                        .frame(height: 40)
                        .padding(.trailing, 25)
                    
                    Rectangle()
                        .fill(CustomColor.LGRAY)
                        .frame(width: 275, height:100)
                        .cornerRadius(25)
                }
                
                Spacer()
                    .frame(height: 30.0)
                
                HStack{
                    
                    Rectangle()
                        .fill(CustomColor.LGRAY)
                        .frame(width: 275, height:100)
                        .cornerRadius(25)
                    Circle()
                        .fill(CustomColor.GRAY)
                        .frame(height: 40)
                        .padding(.trailing, 2)
                    
                }
            }
            
//            TextField
            HStack{
                TextField("Message...", text: $answer)
                    .padding(.all, 25.0)
                    .multilineTextAlignment(.leading)
                    .font(.title)
                
                Button {sent = "CONGRATS!! You used a vocab word!"} label: { Image ("ARROW")
                        .resizable()
                        .padding(.top, 25.0)
                        .scaledToFit()
                        .frame(width: 100, height: 100)
                       }
            
            }
            Text(sent)
                .fontWeight(.bold)
                .foregroundColor(Color("GREEN"))
                .tint(CustomColor.GREEN)
                .font(.system(size:25))
                .fixedSize(horizontal: false, vertical: true)
                .padding(.bottom, 20.0)
      
                    
                
                
                }
    
    }
            
            
            
            
            }
            
            
            
        
            
                
            
        



struct OPENCHAT_Previews: PreviewProvider {
    static var previews: some View {
        OPENCHAT()
    }
}
