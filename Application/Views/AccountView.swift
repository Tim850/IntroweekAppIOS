//
//  AccountView.swift
//  IntoweekApp
//
//  Created by user225610 on 12/1/22.
//

import SwiftUI

struct AccountView: View {
    var body: some View {
        NavigationView
        {
            VStack
            {
                Text("4")
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
