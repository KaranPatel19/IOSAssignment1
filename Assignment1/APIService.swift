//
//  APIService.swift
//  Assignment1
//
//  Created by Karan Patel on 2023-02-08.
//


import Foundation

enum APIServiceErrors: Error{
    case APIFailed;
}


class APIService{
    
    public static func fetchData(from url_string: String) async throws -> Data{
        guard
            let url = URL(string: url_string)
        else{
            throw APIServiceErrors.APIFailed
        }
        let(data,_) = try await URLSession.shared.data(from: url)
        return data
    }
    
}
    
