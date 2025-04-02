//
//  FavouriteJokerView.swift
//  JokeFinder
//
//  Created by Marcus Li on 2025-04-01.
//

import SwiftUI
 
struct FavouriteJokesView: View {
    
    // MARK: Stored properties
     
    // Access the view model from the environment
    @Environment(JokeViewModel.self) var viewModel
     
    // MARK: Computed properties

    var body: some View {
        NavigationStack {
            VStack {
                // When there are no saved jokes...
                if viewModel.favouriteJokes.isEmpty {
                    
                    // ... show an appropriate message
                    ContentUnavailableView(
                        "No favourite jokes",
                        systemImage: "heart.slash",
                        description: Text("See if a new joke might tickle your funny bone!")
                    )
                    
                } else {
                    
                    // ...otherwise, show how many jokes have been saved
                    Text("There are \(viewModel.favouriteJokes.count) saved jokes.")
                    
                }

            }
            .navigationTitle("Favourites")
        }
    }
}
 
#Preview {
    FavouriteJokesView()
        .environment(JokeViewModel())
}
