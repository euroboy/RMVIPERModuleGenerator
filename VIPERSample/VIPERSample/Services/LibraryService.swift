//
//  LibraryService.swift
//  VIPERSample
//
//  Created by User on 9/3/19.
//  Copyright © 2019 User. All rights reserved.
//

import Foundation

protocol LibraryServiceProtocol
{
    func retrieveGenres(onSuccess: @escaping ([Genre]) -> Void, onFailure: @escaping (ErrorType) -> Void)
}

struct LibraryService: LibraryServiceProtocol
{
    func retrieveGenres(onSuccess: @escaping ([Genre]) -> Void, onFailure: @escaping (ErrorType) -> Void)
    {
        guard let jsonPath = Bundle.main.path(forResource: "LibraryData", ofType: "json"),
            let data = try? Data(contentsOf: URL(fileURLWithPath: jsonPath)) else
        {
            onFailure(.message("Failed to access the data file"))
            return
        }
        
        do
        {
            let genres = try JSONDecoder().decode([Genre].self, from: data)
            onSuccess(genres)
        }
        catch
        {
            print(error)
            onFailure(.request(error: error))
        }
    }
}
