//
//  PokemonList.swift
//  Pokedex
//
//  Created by Brent Schooley on 6/21/19.
//  Copyright © 2019 Brent Schooley. All rights reserved.
//

import SwiftUI

struct PokemonList : View {
    var body: some View {
        NavigationView {
            List(pokedex) { pokemon in
                NavigationButton(destination: PokemonDetail(pokemon: pokemon)) {
                    PokemonRow(pokemon: pokemon)
                }
            }
            .navigationBarTitle(Text("Pokedex"))
        }
    }
}

#if DEBUG
struct PokemonList_Previews : PreviewProvider {
    static var previews: some View {
        PokemonList()
    }
}
#endif
