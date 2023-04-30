

import SwiftUI

struct PostView: View {
    
    let post: Post
    
    var body: some View {
        VStack
        {
            HStack
            {
                Image(systemName: "circle")
                    .font(.system(size: 40))
                
                VStack{
                    HStack
                    {
                        Text("P. van Lepidoptera")
                            .font(.title3)
                        Spacer()
                    }
                    HStack
                    {
                        Text("2 " + NSLocalizedString("day(s) ago", comment: ""))
                            .font(.subheadline)
                        Spacer()
                    }
                }
                
                Spacer()
            }
            .padding(15)
            
            Spacer()
            Image(systemName: "hammer.circle.fill")
                .font(.system(size: 100))
            Spacer()
            
            HStack{
                Text("I had such a great time playing tic tac toe with you guys!")
                Spacer()
            }
            .padding(20)
            Spacer()
        }
        .frame(width: 350, height: 450)
        .background(Color(red: 245 / 255, green: 245 / 255, blue: 245 / 255))
        .overlay(
            RoundedRectangle(cornerRadius: 15)
                .stroke(Color.black, lineWidth: 1)
            
        )
    }
}

//struct Post_Previews: PreviewProvider {
 //   static var previews: some View {
  //      PostView()
   // }
//}
	
