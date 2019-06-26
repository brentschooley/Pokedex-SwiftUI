//
//  PokemonRow.swift
//  Pokedex
//
//  Created by Brent Schooley on 6/21/19.
//  Copyright © 2019 Brent Schooley. All rights reserved.
//

import SwiftUI

struct PokemonRow : View {
    var pokemon: Pokemon
    
    var body: some View {
        HStack {
            Image("\(pokemon.id)")
                .resizable()
                .frame(width: 48, height: 48)
            VStack(alignment: .leading) {
                Text(pokemon.name)
                    .font(.title)
            }
        }
    }
}

#if DEBUG
struct PokemonRow_Previews : PreviewProvider {
    static var previews: some View {
        Group {
            PokemonRow(pokemon: pokedex[0])
                .previewLayout(.fixed(width: 300, height: 70))
            PokemonRow(pokemon: pokedex[1])
                .previewLayout(.fixed(width: 300, height: 70))
            PokemonRow(pokemon: pokedex[2])
                .previewLayout(.fixed(width: 300, height: 70))
        }
    }
}
#endif
