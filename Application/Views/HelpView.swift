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
                Text(NSLocalizedString("Help", comment: ""))
                    .offset(y:38)
                    .font(.title2)
                
                Text("Emergency number: 06-20084638")
                    .padding(.vertical, 40)
                    .font(.title3)
                    .foregroundColor(.red)
                
                Text(NSLocalizedString("Frequently asked questions", comment: ""))
                    .font(.title2)
                
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

struct HelpView_Previews: PreviewProvider {
    static var previews: some View {
        HelpView()
    }
}
