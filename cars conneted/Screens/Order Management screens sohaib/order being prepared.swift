//
//  order being prepared.swift
//  cars conneted
//
//  Created by Sohaib Sajjad on 29/07/2022.
//

import SwiftUI

struct order_being_prepared: View {
    
    @State var note = ""
    
    var body: some View {
        
        VStack(alignment:.leading){
            
            HStack{
            
        Text("Order Being Prepared")
                    .fontWeight(.medium)
                .font(.system(size: 22))
            
           Spacer()
                
                Image(systemName: "multiply")
                
            }
            
            
            Text("Add Note")
                .foregroundColor(.gray)
                .padding(.top,20)
            
            TextField("Write note here..", text: $note)
                .foregroundColor(.gray)
                .padding(.top,10)
            
            Spacer()

            
        }.padding(.leading,20)
            .padding(.trailing,20)
            .padding(.top,20)
        
    }
}

struct order_being_prepared_Previews: PreviewProvider {
    static var previews: some View {
        order_being_prepared()
    }
}
