//
//  ContentView.swift
//  Dependabot-iOS
//
//  Created by Ebubekir Sezer on 20.02.2024.
//

import SwiftUI
import DependabotSPM
import Alamofire

struct ContentView: View {
    @State var message: String = "Hello, world!"
    var body: some View {
        VStack {
            Image(systemName: "globe")
                .imageScale(.large)
                .foregroundStyle(.tint)
            Text(message)
        }
        .padding()
        .task {
            // Automatic String to URL conversion, Swift concurrency support, and automatic retry.
            SessionManager.default.request("https://api.api-ninjas.com/v1/loremipsum?paragraphs=2")
                .validate()
                .responseJSON { response in
                    switch response.result {
                    case let .success(value):
                        message = "Success"
                        print(value)
                    case let .failure(error):
                        message = error.localizedDescription
                    }
                }

        }
    }
}

#Preview {
    ContentView()
}
