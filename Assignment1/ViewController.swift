//
//  ViewController.swift
//  Assignment1
//
//  Created by Karan Patel on 2023-02-08.
//

import UIKit

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }
    
    private func Output(api name: String, json: Any){
        print("\(name) API:")
        print(json)
      
      
    }

    @IBAction func placedogapi(_ sender: Any) {
        let url = "https://animechan.vercel.app/api/random"
        Task{
            let data: Data = try await APIService.fetchData(from: url)
            do{
                let json = try JSONSerialization.jsonObject(with: data, options: [])
                Output(api: "Anime Quatos", json: json)
            }catch{
                print(error)
            }
        }
    }
    
    @IBAction func coffeeApi(_ sender: Any) {
        let url = "https://coffee.alexflipnote.dev/random.json"
        Task{
            let data: Data = try await APIService.fetchData(from: url)
            do{
                let json = try JSONSerialization.jsonObject(with: data, options: [])
                Output(api: "Coffee Photos", json: json)
            }catch{
                print(error)
            }
        }
        
    }
    @IBAction func randomdogAPI(_ sender: Any) {
        let url = "https://random.dog/woof.json"
        Task{
            let data: Data = try await APIService.fetchData(from: url)
            do{
                let json = try JSONSerialization.jsonObject(with: data, options: [])
                Output(api: "Random Photos", json: json)
            }catch{
                print(error)
            }
        }
    }
    
}

