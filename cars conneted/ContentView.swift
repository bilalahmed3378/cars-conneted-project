//
//  ContentView.swift
//  cars conneted
//
//  Created by Bilal Ahmed on 19/07/2022.
//

import SwiftUI

struct ContentView: View {
    
  
    @State var someBool : Bool = false
    
    var body: some View {
        
        NavigationView{
            ZStack{
                
                Login_Screen( toHomeScreen: self.$someBool)
          
                
            }
            .edgesIgnoringSafeArea(.all)
        }
        .navigationViewStyle(.stack)
        .edgesIgnoringSafeArea(.all)
        
        
    }
}

//struct ContentView_Previews: PreviewProvider {
//    static var previews: some View {
//        ContentView()
//    }
//}

extension UIScreen{
  static let screenWidth = UIScreen.main.bounds.size.width
  static let widthBlockSize = (UIScreen.main.bounds.size.width/100)
  static let screenHeight = UIScreen.main.bounds.size.height
  static let heightBlockSize = (UIScreen.main.bounds.size.height/100)
  static let screenSize = UIScreen.main.bounds.size
}
