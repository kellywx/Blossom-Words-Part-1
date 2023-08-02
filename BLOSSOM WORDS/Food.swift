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
    @State var array = [0,1,2,3,4]
    var body: some View {
        VStack {
            Text("Food")
                .font(.largeTitle)
                .fontWeight(.bold)
                .padding(.trailing, 300)
            Text("Here are your 5 words for today:")
                .font(.title)
                .fontWeight(.regular)
                .padding(.leading, 10)
                .padding(.top)
            ScrollView(.horizontal, showsIndicators: false) {
                HStack(spacing: 20) {
                    ForEach(0..<10) {
                        Text("Item \($0)")
                            .foregroundStyle(.white)
                            .font(.largeTitle)
                            .frame(width: 200, height: 200)
                            .background(.red)
                    }
                }
            }
        }
        .padding(.bottom, 400)
        .padding(.top, 30)
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
