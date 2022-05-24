//
//  NetworkServiceProvider.swift
//  DIContainerTest
//
//  Created by Mohammad Arshad on 24/5/2022.
//

import Foundation


private struct NetworkServiceProviderKey: InjectionKey {
    static var currentValue: NetworkServiceProtocol = NetworkServiceProvider(testStringValueToGet: "")
}


extension InjectedValues {
    var networkProvider: NetworkServiceProtocol {
        get { Self[NetworkServiceProviderKey.self] }
        set { Self[NetworkServiceProviderKey.self] = newValue }
    }
}


struct NetworkServiceProvider: NetworkServiceProtocol {
   
    
    var testStringValueToGet:String
    func requestData(emit:String) -> String{
      
        return "\(emit) and I am reading it from Network Provider"
        
    }
    mutating func setStringValueToGet(valueToSet:String){
        testStringValueToGet = valueToSet
    }
}
