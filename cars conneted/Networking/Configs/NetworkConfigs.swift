//
//  NetworkConfigs.swift
//  cars conneted
//
//  Created by Bilal Ahmed on 02/08/2022.
//

import SwiftUI

struct NetworkConfig {
    
    //    static let baseUrl = "http://164.92.224.155:83/api/"
    static let baseUrl = "http://139.59.63.197:3000/"
    
    // secret key
    static let secretKey = "JHIUut%R45eERGY^u98oij*Y&r56$W@#Q324%R^7rt43#@3RES^&R%867guylIy89^R%54d"
    
    //endpoints
    static let login = "user/auth/login"
    static let signup = "user/auth/signup"
    static let addProfileData = "user/addProfile"
    static let viewProfileData = "user/viewProfile"
    static let updateProfileData = "user/updateProfile"
    static let forgetPassword = "forgot-password"
    static let verifyOtp = "verify/otp"
    static let updateForgetPassword = "change-password"
    static let getAllProfessionals = "get-all-professionals"
    static let getProfessionalProfile = "view-professional-profile"
    static let viewAllEvents = "event/view-all"
    static let getEventDetails = "event/view"
    static let addEventComment = "event/add-comment"
    static let getEventComments = "event/view-comments"
    static let addCommentReply = "event/add-child-comment"
    static let joinEvent = "join-event"
    static let getMeccaMarketHome = "get-collective-limited-products-shops"
    static let allPopularProducts = "get-all-popular-products"
    static let getProductDetails = "product/view"
    static let addToCart = "add-to-cart"
    static let getDeviceCart = "view-device-carts"
    static let updateCart = "update-cart"
    static let addBillingAddress = "BillingAddress/add"
    static let viewBillingAddress = "BillingAddress/view"
    static let viewAllBillingAddresses = "get-user-billing-addresses"
    static let updateBillingAddress = "BillingAddress/update"
    static let deleteBillingAddress = "BillingAddress/delete"
    static let viewAllShippingAddresses = "get-user-shipping-addresses"
    static let addShippingAddress = "ShippingAddress/add"
    static let updateShippingAddress = "ShippingAddress/update"
    static let deleteShippingAddress = "ShippingAddress/delete"
    static let checkout = "checkout"
    static let sendEmailVerificationOtp = "user/send/verfication-email"
    static let verifyEmailOtp = "user/verify/email"
    static let sendForgetPasswordOtp = "user/send/forget-password-otp"
    static let verifyForgetPasswordOtp = "user/verify/otp"
    static let resetPassword = "user/auth/reset-password"
    static let resendEmailVerificationOtp = "user/send/verfication-email"


    
    
    
}
