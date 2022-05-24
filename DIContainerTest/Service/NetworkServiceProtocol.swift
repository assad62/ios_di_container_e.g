//
//  NetworkServiceProtocol.swift
//  DIContainerTest
//
//  Created by Mohammad Arshad on 24/5/2022.
//

import Foundation

protocol NetworkServiceProtocol {
    var testStringValueToGet:String { get }
    func requestData(emit:String) ->String
    mutating func setStringValueToGet(valueToSet:String) //needs to be mutating as we are updating testStringValueToGet
}
