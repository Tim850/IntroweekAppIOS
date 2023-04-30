//
//  AccountView.swift
//  IntoweekApp
//
//  Created by user225610 on 12/1/22.
//

import SwiftUI

struct AccountView: View {
    
    let testPost: Post = Post(id:5, description:"Wow", image:"waowaw", likeCount:3, postStatus:"ok")
    var body: some View {
        NavigationView
        {
            VStack
            {
                Text(NSLocalizedString("My account", comment: ""))
                    .font(.title2)
                    .padding(.bottom, 30)
                
                HStack
                {
                    Image(systemName: "circle")
                        .font(.system(size: 40))
                    
                    VStack{
                        HStack
                        {
                            Text("Piet Persoon")
                                .font(.title3)
                            Spacer()
                        }
                        HStack
                        {
                            Text(NSLocalizedString("Lepidoptera", comment: ""))
                                .font(.subheadline)
                            Spacer()
                        }
                    }
                    
                    Spacer()
                }
                .padding(.horizontal, 20)
                
                Text(NSLocalizedString("My posts", comment: ""))
                    .font(.title2)
                    .padding(.bottom, 30)
                    .padding(.top, 30)
                
                PostView(post: testPost)
                
                Spacer()
            }
            .navigationBarBackButtonHidden(false)
            .toolbar {
                ToolbarItem(placement: .navigationBarTrailing) {
                    NavigationLink(destination: ModerationView()){
                        Image(systemName: "person.2.square.stack.fill")
                    }
                }
            }
        }
    }
}

struct AccountView_Previews: PreviewProvider {
    static var previews: some View {
        AccountView()
    }
}
