//
//  AppData.swift
//  cars conneted
//
//  Created by Bilal Ahmed on 02/08/2022.
//

import Foundation


class AppData {
    
    
    
    func appFirstTimeLoaded()->Bool{
        let sharedPrefrences = UserDefaults.standard
        if(sharedPrefrences.object(forKey: Constants.isFirstTimeLoaded)==nil){
            return false
        }
        return sharedPrefrences.bool(forKey: Constants.isFirstTimeLoaded)
    }
    
    func isRememberMe()->Bool{
        let sharedPrefrences = UserDefaults.standard
        if (sharedPrefrences.object(forKey: Constants.rememberMe) == nil){
            return false
        }
        return (sharedPrefrences.bool(forKey: Constants.rememberMe))
    }
    
    
    func isUserLoggedIn()->Bool{
        let sharedPrefrences = UserDefaults.standard
        if (sharedPrefrences.object(forKey: Constants.userLoggedIn) == nil){
            return false
        }
        return (sharedPrefrences.bool(forKey: Constants.userLoggedIn))
    }
    
    
    func userLoggedIn(){
        UserDefaults.standard.set(true, forKey: Constants.userLoggedIn)
    }
    
    func getUserEmail()->String{
        let sharedPrefrences = UserDefaults.standard
        if (sharedPrefrences.object(forKey: Constants.userEmail)==nil){
            return ""
        }
        return sharedPrefrences.string(forKey: Constants.userEmail)!
    }
    
    func getUserPassword()->String{
        let sharedPrefrences = UserDefaults.standard
        if (sharedPrefrences.object(forKey: Constants.userPassword)==nil){
            return ""
        }
        return sharedPrefrences.string(forKey: Constants.userPassword)!
    }
    
    
    func getUserId()->String{
        let sharedPrefrences = UserDefaults.standard
        if (sharedPrefrences.object(forKey: Constants.userId)==nil){
            return ""
        }
        return sharedPrefrences.string(forKey: Constants.userId)!
    }
    
    func getUserName()->String{
        let sharedPrefrences = UserDefaults.standard
        var name = ""
        if !(sharedPrefrences.object(forKey: Constants.firstName)==nil){
            name.append(sharedPrefrences.string(forKey: Constants.firstName)!)
        }
        if !(sharedPrefrences.object(forKey: Constants.lastName)==nil){
            name.append(" ")
            name.append(sharedPrefrences.string(forKey: Constants.lastName)!)
        }
        return name
    }
    
    
    func getFirstName()->String{
        let sharedPrefrences = UserDefaults.standard
        var name = ""
        if !(sharedPrefrences.object(forKey: Constants.firstName)==nil){
            name.append(sharedPrefrences.string(forKey: Constants.firstName) ?? "")
        }
        return name
    }
    
    
    func getLastName()->String{
        let sharedPrefrences = UserDefaults.standard
        var name = ""
        if !(sharedPrefrences.object(forKey: Constants.lastName)==nil){
            name.append(sharedPrefrences.string(forKey: Constants.lastName) ?? "")
        }
        return name
    }
    
    
    func getPhone()->String{
        let sharedPrefrences = UserDefaults.standard
        var phone = ""
        if !(sharedPrefrences.object(forKey: Constants.userPhoneNumber)==nil){
            phone.append(sharedPrefrences.string(forKey: Constants.userPhoneNumber) ?? "")
        }
        return phone
    }
    
    
    
    func appIsLoadedForFistTime(){
        UserDefaults.standard.set(true, forKey: Constants.isFirstTimeLoaded)
    }
    
    func saveFcmToken(fcmToken : String){
        UserDefaults.standard.set(fcmToken, forKey: Constants.fcmToken)
    }
    
    func getFcmToken()->String{
        var fcmToken = ""
        let sharedPrefrences = UserDefaults.standard
        if !(sharedPrefrences.object(forKey: Constants.fcmToken) == nil){
            fcmToken = sharedPrefrences.string(forKey: Constants.fcmToken) ?? ""
        }
        return fcmToken
    }
    
    func saveUserId(userId : String){
        UserDefaults.standard.set(userId, forKey: Constants.userId)
    }
    
    func getGender() -> String{
        if !(UserDefaults.standard.object(forKey: Constants.gender) == nil){
            return UserDefaults.standard.string(forKey: Constants.gender) ?? ""
        }
        return ""
        
    }
    
    func setRemeberMe(rememberMe : Bool){
        UserDefaults.standard.set(rememberMe, forKey: Constants.rememberMe)
    }
    
    func saveRememberMeData(email : String , password: String){
        UserDefaults.standard.set(email, forKey: Constants.userEmail)
        UserDefaults.standard.set(password, forKey: Constants.userPassword)
    }
    
//    func getAddress() -> String{
//        if !(UserDefaults.standard.object(forKey: Constants.address) == nil){
//            return UserDefaults.standard.string(forKey: Constants.address) ?? ""
//        }
//        return ""
//        
//    }
    
    func isEmailVerfied()->Bool{
        if (UserDefaults.standard.object(forKey: Constants.emailVerfied) == nil){
            return false
        }
        return UserDefaults.standard.bool(forKey: Constants.emailVerfied)
    }
    
    
    func setEmailVerfied(verfied : Bool){
        UserDefaults.standard.set(verfied, forKey: Constants.emailVerfied)
    }
    
   
    
   
    
    
//    func saveAboutMe(aboutMe : String){
//        UserDefaults.standard.set(aboutMe, forKey: Constants.aboutMe)
//    }
//
//    func getAboutMe()->String{
//        if (UserDefaults.standard.object(forKey: Constants.aboutMe) == nil){
//            return ""
//        }
//        else{
//            return UserDefaults.standard.string(forKey: Constants.aboutMe) ?? ""
//        }
//    }
    
    func saveBearerToken(bearerToken : String){
        UserDefaults.standard.set(bearerToken, forKey: Constants.bearerToken)
    }
    
    
    func getBearerToken()->String{
        if (UserDefaults.standard.object(forKey: Constants.bearerToken) == nil){
            return ""
        }
        else{
            return UserDefaults.standard.string(forKey: Constants.bearerToken) ?? ""
        }
    }
    
    func logoutTheUser(){
        UserDefaults.standard.removeObject(forKey: Constants.userLoggedIn)
        UserDefaults.standard.removeObject(forKey: Constants.bearerToken)
        UserDefaults.standard.removeObject(forKey: Constants.userId)
        UserDefaults.standard.removeObject(forKey: Constants.firstName)
        UserDefaults.standard.removeObject(forKey: Constants.lastName)
        UserDefaults.standard.removeObject(forKey: Constants.userEmail)
        UserDefaults.standard.removeObject(forKey: Constants.userImage)
        UserDefaults.standard.removeObject(forKey: Constants.userPhoneNumber)
        UserDefaults.standard.removeObject(forKey: Constants.userStore)
    }
    
    func saveUserDetails(user : LoginUserModel){
        UserDefaults.standard.set(user.id, forKey: Constants.userId)
        UserDefaults.standard.set(user.fullName, forKey: Constants.fullName)
        UserDefaults.standard.set(user.email, forKey: Constants.userEmail)
//        UserDefaults.standard.set(user.signup_method, forKey: Constants.signupMethod)
//        UserDefaults.standard.set(user.user_type, forKey: Constants.userType)
        UserDefaults.standard.set(user.type, forKey: Constants.type)
    }
    
    
    
   
    
    
    func setGender(gender : String) {
        UserDefaults.standard.set(gender, forKey: Constants.gender)
    }
    
    func profileSetup() {
        UserDefaults.standard.set(1, forKey: Constants.isProfileSetup)
    }
    
    func isProfileSetup() -> Int{
        if(UserDefaults.standard.object(forKey: Constants.isProfileSetup) != nil){
            return UserDefaults.standard.integer(forKey: Constants.isProfileSetup)
        }
        else{
            return 0
        }
    }
    
    
    
//    func saveUserDetails(employee : EmployeProfile){
//        UserDefaults.standard.set(employee.firstname, forKey: Constants.firstName)
//        UserDefaults.standard.set(employee.lastname, forKey: Constants.lastName)
//        UserDefaults.standard.set(employee.email, forKey: Constants.userEmail)
//        UserDefaults.standard.set(employee.image, forKey: Constants.userImage)
//        UserDefaults.standard.set(employee.phone, forKey: Constants.userPhoneNumber)
//        UserDefaults.standard.set(employee.storename, forKey: Constants.userStore)
//    }
    
    func getUserFirstName()->String{
        var name = ""
        let sharedPrefrences = UserDefaults.standard
        if !(sharedPrefrences.object(forKey: Constants.firstName) == nil){
            name = sharedPrefrences.string(forKey: Constants.firstName)!
        }
        return name
    }
    
    
    
    
    
}

