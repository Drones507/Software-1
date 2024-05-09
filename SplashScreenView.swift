//  SplashScreenView.swift
//  CashFlow
//
//  Created by Christopher Harvey on 5/8/24.
//

import SwiftUI

struct SplashScreenView: View{
    @State private var isActive = false
    @State private var size = 0.8
    @State private var opacity = 0.5
    
    var body: some View{
        
        if isActive{
            ContentView()
        } else{
            VStack{
                VStack{
                    Text("CashFlow")
                        .font(Font.custom("Baskerville-Bold", size: 26))
                        .foregroundColor(.black.opacity(0.80))
                }
                .scaleEffect(size)
                .opacity(opacity)
                .onAppear{
                    withAnimation(.easeIn(duration: 1.2)){
                        self.size = 0.9
                        self.opacity = 1.0
                    }
                }
            }
            .onAppear{
                DispatchQueue.main.asyncAfter(deadline: .now() + 1.0){
                    withAnimation{
                        self.isActive = true
                    }
                }
            }
        }
    }

        }
      
