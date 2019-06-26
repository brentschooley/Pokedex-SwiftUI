//
//  PokemonDetail.swift
//  Pokedex
//
//  Created by Brent Schooley on 6/21/19.
//  Copyright © 2019 Brent Schooley. All rights reserved.
//

import SwiftUI

struct PokemonDetail : View {
    var pokemon: Pokemon
    
    var body: some View {
        Image("\(pokemon.id)")
        
        .navigationBarTitle(Text(pokemon.name), displayMode: .inline)
    }
}

#if DEBUG
struct PokemonDetail_Previews : PreviewProvider {
    static var previews: some View {
        NavigationView {
            PokemonDetail(pokemon: pokedex[3])
        }
    }
}
#endif
