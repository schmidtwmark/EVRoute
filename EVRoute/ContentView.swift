//
//  ContentView.swift
//  EVRoute
//
//  Created by Mark Schmidt on 3/11/22.
//

import SwiftUI

struct MapView : UIViewControllerRepresentable {
    func updateUIViewController(_ uiViewController: MapViewController, context: Context) {
    }
    
    func makeUIViewController(context: Context) -> MapViewController {
        let vc = MapViewController()
        return vc
    }
}

struct SearchPanel: View {
    struct OvalTextFieldStyle: TextFieldStyle {
        func _body(configuration: TextField<Self._Label>) -> some View {
            configuration
                .padding(10)
                .background(LinearGradient(gradient: Gradient(colors: [Color.orange, Color.orange]), startPoint: .topLeading, endPoint: .bottomTrailing))
                .cornerRadius(20)
                .shadow(color: .gray, radius: 10)
        }
    }
    
    @State var search : String = ""
    var body: some View {
        HStack {
            Image(systemName: "magnifyingglass")
            TextField("Where to?", text: $search).background(Color.white).textFieldStyle(OvalTextFieldStyle()).padding()
        }
        .padding()
    }
    
}
struct ContentView: View {
    var body: some View {
        ZStack {
            MapView().ignoresSafeArea()
            VStack() {
                SearchPanel()
                Spacer()
            }
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}

