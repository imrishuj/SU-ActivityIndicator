//
//  ContentView.swift
//  DemoActivityIndicator
//
//  Created by Juspay on 02/06/20.
//  Copyright © 2020 Rishabh. All rights reserved.
//

import SwiftUI

struct ContentView: View {
    
    @State private var isAnimating = false
    
    var body: some View {
        
        VStack {
            
            ActivityIndicatorView(isAnimating: self.$isAnimating)
            
            Button(action: {
                self.isAnimating = !self.isAnimating
            }, label: {
                isAnimating == true ? Text("Stop Animating") : Text("Start Animating")
            })
        }
    }
}

struct ActivityIndicatorView: UIViewRepresentable {
    
    @Binding var isAnimating: Bool
    
    func makeUIView(context: Context) -> UIActivityIndicatorView {
        return UIActivityIndicatorView()
    }
    
    func updateUIView(_ uiView: UIActivityIndicatorView, context: Context) {
        
        isAnimating == true ? uiView.startAnimating() : uiView.stopAnimating()
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
