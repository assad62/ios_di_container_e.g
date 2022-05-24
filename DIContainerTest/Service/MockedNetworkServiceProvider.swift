//
//  MockedNetworkServiceProvider.swift
//  DIContainerTest
//
//  Created by Mohammad Arshad on 24/5/2022.
//

import Foundation



private struct MockedNetworkServiceProviderKey: InjectionKey {
    static var currentValue: NetworkServiceProtocol = MockedNetworkProvider(testStringValueToGet: "")
}

extension InjectedValues {
    var mockedNetworkProvider: NetworkServiceProtocol {
        get { Self[MockedNetworkServiceProviderKey.self] }
        set { Self[MockedNetworkServiceProviderKey.self] = newValue }
    }
}


struct MockedNetworkProvider: NetworkServiceProtocol {
    
    var testStringValueToGet:String
     func requestData(emit:String) -> String{
         return "\(emit) and I am reading it from Mocked Network Provider"
     
    }
    
    mutating func setStringValueToGet(valueToSet:String){
        testStringValueToGet = valueToSet
    }
}
