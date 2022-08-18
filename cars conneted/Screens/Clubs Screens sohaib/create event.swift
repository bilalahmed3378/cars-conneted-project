//
//  create event.swift
//  cars conneted
//
//  Created by Sohaib Sajjad on 27/07/2022.
//

import SwiftUI

struct create_event: View {
    
    @State var firstName = ""
    @State var lastName = ""
    @State var number = ""
    @State var Location = ""
    @State var bio = ""
    @State var type = ""
    
    @State var eventStartDate = Date()

    @State var eventEndDate = Date()
    
    @State var EndDate = ""

    @State var photos : Array<Image> = [Image("Group 7453"),Image("Group 7453"),Image("Group 7453")]
    @State var pickingForProfile = false
    @State var showSheet = false
    
    
    @State private var selection = ""
    let menuOptions = ["Yes","No"]
    
    
    var body: some View {
        
        
        ScrollView(.vertical,showsIndicators: false){


        VStack(alignment: .leading){
            
                        
            Text("Create Your Event")
                .font(.system(size: 24))
                .fontWeight(.bold)
                .foregroundColor(AppColors.redGradientColor1)
                .padding(.top,70)
            
            Text("Lorem ipsum dolor sit amet, consectetur adipiscing elit. Aliquet tincidunt viverra nunc scelerisque gravida odio.")
                .foregroundColor(.gray)
                .padding(.top,10)
            
            
            Image("createEvent")
                .resizable()
                .frame(height: 200)
                .padding(.top,20)
         
            Group{
            
            Text("Event Name")
                .padding(.top,30)
                .frame(maxWidth: .infinity, alignment: .leading)
                .foregroundColor(.gray)
            
            
            
            TextField("Acassic Clube Club",text:$firstName)
                .padding(.vertical, 10)
                .autocapitalization(.none)
                .background(Rectangle().frame(height: 1).padding(.top, 42))
                .foregroundColor(.gray)
            
            
            
            Text("Description")
                .padding(.top,28)
                .frame(maxWidth: .infinity, alignment: .leading)
                .foregroundColor(.gray)
            
            
            
            TextField("Write descripton here",text:$lastName)
                .padding(.vertical, 10)
                .autocapitalization(.none)
                .background(Rectangle().frame(height: 1).padding(.top, 42))
                .foregroundColor(.gray)
            
            }
            
            Group{
            
            Text("Event Start Date")
                .padding(.top,28)
                .frame(maxWidth: .infinity, alignment: .leading)
                .foregroundColor(.gray)
            
            DatePicker("00/00/000", selection: $eventStartDate , displayedComponents: .date)
                            .background(Rectangle().frame(height: 1).padding(.top, 42))
                            .foregroundColor(.gray)

            
            
            Text("Event End Date")
                .padding(.top,28)
                .frame(maxWidth: .infinity, alignment: .leading)
                .foregroundColor(.gray)
            
            DatePicker("00/00/000", selection: $eventStartDate , displayedComponents: .date)
                            .background(Rectangle().frame(height: 1).padding(.top, 42))
                            .foregroundColor(.gray)

            
            Text("Is It  Recurring Event")
                .padding(.top,28)
                .frame(maxWidth: .infinity, alignment: .leading)
                .foregroundColor(.gray)
            
            
            VStack {
                
                Picker("Recurring Event", selection: $selection) {
                    ForEach(menuOptions, id: \.self) {
                        
                        Text($0)
                        
                    }
                }
                .pickerStyle(.menu)
                
            }
            
            }
//
//
//
//            TextField("00/00/000",text:$lastName)
//                .padding(.vertical, 10)
//                .autocapitalization(.none)
//                .background(Rectangle().frame(height: 1).padding(.top, 42))
//                .foregroundColor(.gray)
//
//            Text("Event End Date")
//                .padding(.top,28)
//                .frame(maxWidth: .infinity, alignment: .leading)
//                .foregroundColor(.gray)
//
//
//
//            TextField("00/00/000",text:$lastName)
//                .padding(.vertical, 10)
//                .autocapitalization(.none)
//                .background(Rectangle().frame(height: 1).padding(.top, 42))
//                .foregroundColor(.gray)
            
            
        }
            
        }
        
    }
}

struct create_event_Previews: PreviewProvider {
    static var previews: some View {
        create_event()
    }
}
