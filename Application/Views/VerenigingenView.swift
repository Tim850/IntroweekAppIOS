//
//  VerenigingenView.swift
//  IntoweekApp
//
//  Created by user225610 on 12/1/22.
//

import SwiftUI

struct VerenigingenView: View {
    var body: some View {
        NavigationView
        {
            VStack
            {
                Text(NSLocalizedString("Associations", comment: ""))
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

struct VerenigingenView_Previews: PreviewProvider {
    static var previews: some View {
        VerenigingenView()
    }
}
