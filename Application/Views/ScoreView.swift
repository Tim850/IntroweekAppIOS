//
//  ScoreView.swift
//  IntoweekApp
//
//  Created by user225610 on 12/1/22.
//

import SwiftUI

struct ScoreView: View {
    var body: some View {
        NavigationView
        {
            VStack
            {
                Text(NSLocalizedString("Scores", comment: ""))
                    .padding(.top, 38)
                    .font(.title2)
                
                VStack{
                    HStack{
                        Spacer()
                        Text("Lepidoptera")
                        VStack
                        {
                            
                        }
                        .frame(width: 200, height: 10)
                        .background(Color(red: 245 / 255, green: 200 / 255, blue: 200 / 255))
                        .overlay(
                            RoundedRectangle(cornerRadius: 15)
                                .stroke(Color.black, lineWidth: 1)
                        )
                    }
                    
                    HStack{
                        Spacer()
                        Text("Virplaza")
                        VStack
                        {
                            
                        }
                        .frame(width: 200, height: 10)
                        .background(Color(red: 245 / 255, green: 200 / 255, blue: 200 / 255))
                        .overlay(
                            RoundedRectangle(cornerRadius: 15)
                                .stroke(Color.black, lineWidth: 1)
                        )
                    }
                    
                    HStack{
                        Spacer()
                        Text("Personalia")
                        VStack
                        {
                            
                        }
                        .frame(width: 200, height: 10)
                        .background(Color(red: 200 / 255, green: 245 / 255, blue: 200 / 255))
                        .overlay(
                            RoundedRectangle(cornerRadius: 15)
                                .stroke(Color.black, lineWidth: 1)
                        )
                    }
                }
                .padding(.all, 40)
                
                
                
                Spacer()
            }
            .navigationBarBackButtonHidden(false)
            .toolbar {
                ToolbarItem(placement: .navigationBarTrailing) {
                    //NavigationLink(destination: ModerationView()){
                    //    Image(systemName: "person.2.square.stack.fill")
                    //}
                }
            }
        }
    }
}

struct ScoreView_Previews: PreviewProvider {
    static var previews: some View {
        ScoreView()
    }
}
