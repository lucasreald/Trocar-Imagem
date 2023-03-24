//
//  ContentView.swift
//  SwitchImagemUsingButton
//
//  Created by Lucas Real Dias on 07/03/23.
//

import SwiftUI

struct ContentView: View {
    
    @State var changeMoonColor = false
    @State var changeText = false
    
    var body: some View {
        
        VStack{
            Image(systemName: "moon")
                .font(.system(size: 150))
            
                 //MARK: OPERADOR TERNÁRIO
                               //COND ? POSITIVO : NEGEGATIVO
                .foregroundColor(changeMoonColor ? .blue : .gray)
            
                .padding(10)
            
            Button(changeText ? "Change to Gray" : "Change to Blue"){
                changeMoonColor.toggle()
                changeText.toggle()
            }
            .font(.system(size: 20))
            .foregroundColor(.white)
            .padding(10)
            .background(Color.blue)
            .cornerRadius(10)
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
