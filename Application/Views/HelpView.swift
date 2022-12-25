//
//  HelpView.swift
//  IntoweekApp
//
//  Created by user225610 on 12/1/22.
//

import SwiftUI

struct HelpView: View {
    var body: some View {
        NavigationView
        {
            VStack
            {
                Text("3")
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

struct HelpView_Previews: PreviewProvider {
    static var previews: some View {
        HelpView()
    }
}
