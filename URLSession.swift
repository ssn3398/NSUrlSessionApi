//
//  URLSession.swift
//  NSUrlSessionApi
//
//  Created by Shelly Scott-Nash on 1/9/17.
//  Copyright © 2017 Shelly Scott-Nash. All rights reserved.
//

import Foundation

class FruitAPI {
    func fetch(completion:@escaping ([Item])->Void){
        var items:[Item] = []
        let session = URLSession(configuration: URLSessionConfiguration.default)
        let path = "https://jsonplaceholder.typicode.com/posts"
        if let fetchURL = URL(string: path) {
            session.dataTask(with: fetchURL, completionHandler:{ (data, response, error) -> Void in
                if let data = data {
                    //print("Returned data is : \(data)")
                    
                    if let json = try? JSONSerialization.jsonObject(with: data, options: []) as? [Any] {
                        for o in json! {
                            print("object is: \(o)")
                            items.append(Item(json: o as! [String: Any]))
                        }
                        
                    }
                    
                }
                if let error = error {
                    print("Error: \(error)")
                }
                completion(items)
            }).resume()
        }
        
    }
}

