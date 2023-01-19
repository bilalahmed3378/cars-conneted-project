//
//  DeleteGarageApi.swift
//  cars conneted
//
//  Created by Bilal Ahmed on 19/01/2023.
//

import Foundation


class DeleteGarageApi : ObservableObject{
    //MARK: - Published Variables
    @Published var isLoading = false
    @Published var isApiCallDone = false
    @Published var isApiCallSuccessful = false
    @Published var garageDeletedSuccessfully = false
    @Published var apiResponse :  DeleteGarageResponseModel?
    
    
    //MARK: - Get Customer Orders History
    func deleteCar(){
        
        self.isLoading = true
        self.isApiCallSuccessful = true
        self.garageDeletedSuccessfully = false
        self.isApiCallDone = false
        
        //Create url
        guard let url = URL(string: NetworkConfig.baseUrl + NetworkConfig.deleteGarage ) else {return}
        
        
        let token = AppData().getBearerToken()
        
        
        //Create request
        var request = URLRequest(url: url)
        request.httpMethod = "DELETE"
        request.setValue( token, forHTTPHeaderField: "token")
        request.setValue(NetworkConfig.secretKey, forHTTPHeaderField: "secret_key")
        
        
        
        //:end
        
        
        
        let task = URLSession.shared.dataTask(with: request) { data, response, error in
            guard let data = data, error == nil else {
                print(error?.localizedDescription ?? "No data")
                DispatchQueue.main.async {
                    self.isApiCallDone = true
                    self.isApiCallSuccessful=false
                    self.isLoading = false
                }
                return
            }
            //If sucess
            
            
            do{
                print("Got delete Garage response succesfully.....")
                DispatchQueue.main.async {
                    self.isApiCallDone = true
                }
                let main = try JSONDecoder().decode(DeleteGarageResponseModel.self, from: data)
                
                DispatchQueue.main.async {
                    self.apiResponse = main
                    self.isApiCallSuccessful  = true
                    
                    if(main.code == 200 && main.successful == true){
                        
                        self.garageDeletedSuccessfully = true
                        
                    }
                    
                    else{
                        self.garageDeletedSuccessfully = false
                    }
                    self.isLoading = false
                }
            }catch{  // if error
                print(error)
                DispatchQueue.main.async {
                    print(error)
                    self.isApiCallDone = true
                    self.apiResponse = nil
                    self.isApiCallSuccessful  = true
                    self.garageDeletedSuccessfully = false
                    self.isLoading = false
                }
            }
            let responseJSON = try? JSONSerialization.jsonObject(with: data, options: [])
            print(responseJSON)
        }
        
        task.resume()
    }
    
    
    
}
