//
//  ViewController.swift
//  DIContainerTest
//
//  Created by Mohammad Arshad on 23/5/2022.
//

import UIKit


class ViewController: UIViewController {
    
    
    @Injected(\.networkProvider) var networkProvider: NetworkServiceProtocol
    @Injected(\.mockedNetworkProvider) var mockedNetworkProvider: NetworkServiceProtocol
       

    override func viewDidLoad() {
        super.viewDidLoad()
        
      
       
        // Do any additional setup after loading the view.
        print(networkProvider.requestData(emit: "I have submitted this String"))
        print(mockedNetworkProvider.requestData(emit: "I have submitted this String"))
        //value is set in AppDelegate
        print(networkProvider.testStringValueToGet)
        print(mockedNetworkProvider.testStringValueToGet)
    }


}

