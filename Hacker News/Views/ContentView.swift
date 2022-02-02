//
//  ContentView.swift
//  Hacker News
//
//  Created by Arnav Shukla on 17/06/21.
//

import SwiftUI

struct ContentView: View {
    
    // whenever the network manager updates this @ func will execute
   @ObservedObject var networkManager = NetworkManager()
    
    var body: some View {
        NavigationView{
            List(networkManager.posts) { i in
                
                Text(i.title!)
                
            }
        .navigationTitle("Hacker News")
    }
        // this is just like the viewDid load function
        .onAppear(perform: {
            self.networkManager.fetchData()
        })
}
}
struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}

//let posts = [
//Post(id: "1", title: "hello"),
//Post(id: "2", title: "hello2"),
//Post(id: "3", title: "hello3"),
//Post(id: "4", title: "hello4")
//]
