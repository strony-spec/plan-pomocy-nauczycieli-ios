import SwiftUI

struct ContentView: View {
    var body: some View {
        PlanWebView()
            .ignoresSafeArea(.container, edges: .bottom)
            .background(Color(red: 0.94, green: 0.97, blue: 1.00))
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
