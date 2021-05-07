//
//  ContentView.swift
//  EugeneApp
//
//  Created by Евгений Фирман on 08.05.2021.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        ZStack {
            Color(red: 0.09, green: 0.63, blue: 0.52, opacity: 1.0)
                .ignoresSafeArea()
            
            VStack {
                Image("Eugene").resizable().aspectRatio(contentMode: .fit).frame(width:200 ,height: 200).clipShape(/*@START_MENU_TOKEN@*/Circle()/*@END_MENU_TOKEN@*/).overlay(Circle().stroke(Color.white,lineWidth:10))
                
                Text("Eugene Firman")
                    .bold()
                    .padding()
                    .font(Font.custom("Arial", size: 40))
                Text("I am IOS Developer")
                    .font(Font.custom("Arial", size: 30))
                Divider()
                
                InfoView(text: "+7-931-963-84-47", image: "phone.fill")
                InfoView(text: "Saint-Petersburg", image: "location.fill")
              
    
            
            }
        }
       
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}

struct InfoView: View {
    let text: String
    let image: String
    var body: some View {
        HStack {
            Image(systemName: image).foregroundColor(.white)
            Text(text).font(Font.custom("Arial", size: 30))
            
        }.padding(.top, 10)
    }
}
