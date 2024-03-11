//
//  ContentView.swift
//  Calculator
//
//  Created by Justin Lowry on 3/10/24.
//

import SwiftUI

struct MainCalculatorView: View {
    @State var lightMode: Bool = true
    @State var currentComputation: String = ""
    @State var mainResult: String = ""
    
    var body: some View {
        ZStack {
            Color
                .primaryBackground
                .opacity(0.7)
                .ignoresSafeArea()
            
            VStack {
                SunMoonView(lightMode: lightMode)
                    .onTapGesture {
                        withAnimation {
                            lightMode.toggle()
                        }
                    }
                
                Spacer()
                
                ComputationView(mainResult: mainResult, currentComputation)
                
                Text("Hi")
                    .font(.largeTitle)
                    .fontWeight(.bold)
                    .multilineTextAlignment(.center)
                    .minimumScaleFactor(0.1)
                    .padding()
            }
        }
    }
}

#Preview {
    MainCalculatorView()
}
