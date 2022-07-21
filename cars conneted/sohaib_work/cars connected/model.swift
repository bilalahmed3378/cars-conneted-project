//
//  model.swift
//  cars connected
//
//  Created by Sohaib Sajjad on 16/07/2022.
//

import Foundation

struct onboardingView : Identifiable{
    
    var id = UUID()
    var image : String
    var backgroundImage: String
    var title: String
    var indexImg: String

    
    
}

extension onboardingView{
    
    static var sample: [onboardingView] {
        [
            onboardingView(image:"unsplash_qyfco1nfMtg",backgroundImage:"Frame 7895",title:"Car Fans Club",indexImg:"page1" ),
            onboardingView(image:"unsplash_Aqt08E8JzEc",backgroundImage:"Group 7450",title:"Marketplace",indexImg:"page2" ),
            onboardingView(image:"Group 7453",backgroundImage:"Group 7451",title:"Auto-Shows",indexImg:"page3" ),
//            onboardingView(image:"unsplash_qyfco1nfMtg",backgroundImage:"Group 7450",title:"cars" ),

        ]
    }
    
}
