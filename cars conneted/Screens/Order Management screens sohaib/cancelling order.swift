//
//  cancelling order.swift
//  cars conneted
//
//  Created by Sohaib Sajjad on 29/07/2022.
//

import SwiftUI

struct cancelling_order: View {
    
    @State var note = ""
    
    var body: some View {

        VStack(alignment:.leading){
            
            HStack{
            
        Text("Cancelling Order")
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

struct cancelling_order_Previews: PreviewProvider {
    static var previews: some View {
        cancelling_order()
    }
}
