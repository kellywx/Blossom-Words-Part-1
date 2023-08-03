//
//  MakeSentence.swift
//  BLOSSOM WORDS
//
//  Created by Kelly Wei Jin on 8/2/23.
//

import SwiftUI

struct MakeSentence: View {
    @State var Textfield: String = ""
        @State var Answer: String = ""
        @State var ShowButton: Bool = false
        @State var TextFieldVal: Bool = false
    var body: some View {
        VStack{
            Text("Make a sentence with 苹果")
                .font(.system(size: 40))
                .fontWeight(.bold)
                .multilineTextAlignment(.center)
                .padding(.bottom, 50)
            
            //TEXTFIELD
            Text(Answer)
            TextField("Type here...", text: $Textfield)
                .toolbar {
                    ToolbarItemGroup(placement: .keyboard){}
                }
                            .frame(width: 350, height: 250, alignment: .center)
                            .background(Color("GRAY")).cornerRadius(20)
                            .foregroundColor(.black)
                            .font(.headline)
                        
                        
                        Button {
                            if TextFieldVal == true {
                                ShowButton = true
                                Answer = "This sentence is correct!"
                            } else {
                                Answer = "苹果 means apple. This is not a correct sentence. Try again!"
                            }
                            
                            
                        } label: {
                            Text("CHECK")
                                .fontWeight(.bold)
                                .frame(width: 250, height: 50)
                                .background(Color("GREEN"))
                                .cornerRadius(20)
                                .foregroundColor(.white)
                                .padding()
                                .font(.system(size: 30))
                            
                            
                        }
            Text ("EXAMPLE")
                .fontWeight(.bold)
                .frame(width: 150, height: 50)
                .background(Color("PINK"))
                .cornerRadius(20)
                .foregroundColor(.white)
                .padding()
                .font(.system(size: 25))
            Text ("我喜欢吃苹果。")
                .font(.system(size: 25))
                .multilineTextAlignment(.center)
                        
                    }
        .padding(.bottom, 100)
                    .onChange(of: Textfield) { _ in
                        if Textfield == "我最喜欢吃的水果是苹果。" {
                            TextFieldVal = true
                        } else {
                            TextFieldVal = false
                        }
                    }
                    
                    
                }
        }
        

struct MakeSentence_Previews: PreviewProvider {
    static var previews: some View {
        MakeSentence()
    }
}
