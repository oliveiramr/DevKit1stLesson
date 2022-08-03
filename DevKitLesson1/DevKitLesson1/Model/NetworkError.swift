//
//  NetworkError.swift
//  DevKitLesson1
//
//  Created by Murilo Ribeiro de Oliveira on 03/08/22.
//

import Foundation

enum NetworkError: Error {
    case internetError
    case fileDoesNotExist
    case wrongURL
    case decodeError
}
