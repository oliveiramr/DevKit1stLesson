//
//  Service.swift
//  DevKitLesson1
//
//  Created by Murilo Ribeiro de Oliveira on 03/08/22.

import Foundation

class Service {
    
    
    func getData(completion: @escaping ((Result<Person, NetworkError>) -> Void)) {
        guard let url = URL(string: "https://api.namefake.com") else {
            completion(.failure(.wrongURL))
            return
        }

        let dataTask = URLSession.shared.dataTask(with: url) { data, respose, error in
            if let data = data, error == nil {
                do {
                    let decoded = try JSONDecoder().decode(Person.self, from: data)
                    DispatchQueue.main.async {
                        completion(.success(decoded))
                    }
                    
                } catch {
                    DispatchQueue.main.async {
                        completion(.failure(.decodeError))
                    }
                }
                
            } else {
                DispatchQueue.main.async {
                    completion(.failure(.internetError))
                }
            }
        }
        dataTask.resume()
    }
}
