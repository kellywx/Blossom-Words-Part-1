//
//  Food.swift
//  BLOSSOM WORDS
//
//  Created by Kelly Wei Jin on 8/1/23.
//

import SwiftUI

struct Food: View {
    struct CustomColor {
        static let YELLOW = Color("YELLOW")
    }
    var body: some View {
        VStack {
            Text("Food")
                .font(.system(size: 40))
                .fontWeight(.bold)
                .padding(.top)
                .padding(.leading, 20)
            Text("Here are your 5 words for today:")
                .font(.title)
                .fontWeight(.regular)
                .multilineTextAlignment(.center)
                .padding(.leading, 16)
            ScrollView(.horizontal, showsIndicators: false, content: {
                HStack {
                    Image("APPLE")
                               .resizable()
                               .scaledToFit()
                               .border(Color.gray, width:1)
                    
                               .frame(width: 420, height: 400)
                    Image("ORANGE")
                               .resizable()
                               .scaledToFit()
                               .border(Color.gray, width:1)
                               .padding(.leading, 15)
                               .frame(width: 420, height: 400)
                    Image("BANANA")
                               .resizable()
                               .scaledToFit()
                               .border(Color.gray, width:1)
                               .padding(.leading, 15)
                               .frame(width: 420, height: 400)
                    Image("STRAWBERRY")
                               .resizable()
                               .scaledToFit()
                               .border(Color.gray, width:1)
                               .padding(.leading, 15)
                               .frame(width: 420, height: 400)
                    Image("MANGO")
                               .resizable()
                               .scaledToFit()
                               .border(Color.gray, width:1)
                               .padding(.leading, 15)
                               .frame(width: 420, height: 400)
                }
                .padding(.top, 10)
    
            })
            
            Button(action: {
                print("Floating Button Click")
            }, label: {
                NavigationLink(destination: CHAT()) {
                     Text("Make a sentence")
                        .font(.system(size: 26))
                        .padding()
    
                 }
            })
    
                .font(.title)
                .tint(Color("PINK"))
                    .buttonStyle(.borderedProminent)
                    .multilineTextAlignment(.center)
                    .foregroundColor(Color.black)
                    .padding(.top, 20)
        }
        .padding(.bottom, 200)
        .padding(.top, 10)
        .padding(.trailing, 20)
        .frame(maxWidth: .infinity, maxHeight: .infinity) // 1
        .background(CustomColor.YELLOW)
    }
}

// THIS IS A TEST
struct Food_Previews: PreviewProvider {
    static var previews: some View {
        Food()
    }
}
