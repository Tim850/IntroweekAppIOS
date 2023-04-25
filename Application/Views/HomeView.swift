

import SwiftUI

struct HomeView: View {
    
    // EnvironmentObjects
    @EnvironmentObject var introweekStore: IntroweekStore
    
    var body: some View {
        

            VStack{
                if (introweekStore.posts.isEmpty) {
                    Text(NSLocalizedString("No posts found.", comment: ""))
                        .font(.title2)
                        .onAppear(perform: handleOnAppear)
                } else {
                    List(introweekStore.posts) { post in
                        PostView(post: post)
                    }
                }
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

private extension HomeView {
    
    func handleOnAppear() {
        introweekStore.loadPosts()
    }
}

struct HomeView_Previews: PreviewProvider {
    static var previews: some View {
        HomeView()
    }
}
