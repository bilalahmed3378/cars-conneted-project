//
//  NetworkConfigs.swift
//  cars conneted
//
//  Created by Bilal Ahmed on 02/08/2022.
//

import SwiftUI

struct NetworkConfig {
    
    //    static let baseUrl = "http://164.92.224.155:83/api/"
    static let baseUrl = "http://139.59.63.197"
    
    // secret key
    static let secretKey = "JHIUut%R45eERGY^u98oij*Y&r56$W@#Q324%R^7rt43#@3RES^&R%867guylIy89^R%54d"
    
    //endpoints
    static let login = ":3000/user/auth/login"
    static let signup = ":3000/user/auth/signup"
    static let verifyEmailOtp = ":3000/user/verify/email"
    static let sendForgetPasswordOtp = ":3000/user/send/forget-password-otp"
    static let verifyForgetPasswordOtp = ":3000/user/verify/otp"
    static let resetPassword = ":3000/user/auth/reset-password"
    static let resendEmailVerificationOtp = ":3000/user/send/verfication-email"
    static let createProfile = ":3001/user/profile/create"
    static let updateProfile = ":3001/user/profile/update"
    static let getProfile = ":3001/user/profile/view"
    static let addCar = ":3003/user/cars/add"
    static let updateCar = ":3003/user/cars/update"
    static let deleteCar = ":3003/user/cars/delete"
    static let setupGarage = ":3003/user/garage/setup"
    static let viewGarage = ":3003/user/garage/view"
    static let viewAllFaqs = ":3002/user/faq/view"
    static let profileCoverImage = ":3001/user/profile/upload-cover-image"


    
    
}
