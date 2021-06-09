//
//  SettingsView.swift
//  Notes WatchKit Extension
//
//  Created by Shinit Shetty on 06/06/21.
//

import SwiftUI

struct SettingsView: View {
    // MARK: - PROPERTIES
    @State private var value: Float = 1.0
    @AppStorage("lineCount") var lineCount: Int = 1
    
    // MARK: - FUNCTIONS
    func update(){
        lineCount = Int(value)
    }
    
    
    // MARK: - BODY
    
    var body: some View {
        VStack{
            // Header
            HeaderView(title: "Settings")
            // Lines
            Text("Lines: \(lineCount)")
                .font(.title3)
                .fontWeight(.bold)
                .padding(.bottom)
            // Slider
            Slider(value: Binding(get: {
                self.value
            }, set: {(newValue) in
                self.value = newValue
                self.update()
            }), in: 1...4, step: 1)
                .foregroundColor(.accentColor)
                .accentColor(Color(red: 1.0, green: 0.882, blue: 0.176, opacity: 1.0))
            
        }//: VSTACK
    }
}

struct SettingsView_Previews: PreviewProvider {
    static var previews: some View {
        SettingsView()
    }
}
