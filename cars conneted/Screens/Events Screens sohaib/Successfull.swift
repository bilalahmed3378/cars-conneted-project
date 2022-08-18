//
//  Successfull.swift
//  cars conneted
//
//  Created by Sohaib Sajjad on 27/07/2022.
//

import SwiftUI

struct Successfull: View {
    var body: some View {
        
        VStack{
        
        Spacer()
        
        Text("Successfull")
            .fontWeight(.medium)
            .font(.system(size: 24))
            .foregroundColor(AppColors.redGradientColor1)
            .padding(.bottom,200)
  
            
        }
        
        }
}

struct Successfull_Previews: PreviewProvider {
    static var previews: some View {
        Successfull()
    }
}
