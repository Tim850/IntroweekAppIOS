

import SwiftUI

struct ModerationView: View {
    var body: some View {
        VStack
        {
            HStack
            {
                NavigationLink(destination: ModerationFoutView()){
                    Text("Fout")
                        .frame(width: 115, height: 40)
                        .foregroundColor(.black)
                        .background(Color.white)
                        .cornerRadius(15)
                        .font(Font.subheadline)
                        .overlay(
                            RoundedRectangle(cornerRadius: 15)
                                .stroke(Color.black, lineWidth: 1)
                        )
                }
                NavigationLink(destination: ModerationWachtendView()){
                    Text("Wachtend")
                        .frame(width: 115, height: 40)
                        .foregroundColor(.black)
                        .background(Color(red: 147 / 255, green: 112 / 255, blue: 219 / 255, opacity: 0.7 / 1))
                        .cornerRadius(15)
                        .font(Font.subheadline)
                }
                NavigationLink(destination: ModerationGoedView()){
                    Text("Goed")
                        .frame(width: 115, height: 40)
                        .foregroundColor(.black)
                        .background(Color.white)
                        .cornerRadius(15)
                        .font(Font.subheadline)
                        .overlay(
                            RoundedRectangle(cornerRadius: 15)
                                .stroke(Color.black, lineWidth: 1)
                        )
                }
                
            }
            Spacer()
            //Post()
            Text("- Posts to be moderated here -")
            Spacer()
        }
    }
}

struct ModerationView_Previews: PreviewProvider {
    static var previews: some View {
        ModerationView()
    }
}
