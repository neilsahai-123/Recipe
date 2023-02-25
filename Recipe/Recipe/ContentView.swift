//
//  ContentView.swift
//  Recipe
//
//  Created by Ajay Girolkar on 25/02/23.
//

import SwiftUI

let ingredient = """
The Bowl
8 cups cooked brown rice
2 cups beeto grated
2 cups carrot grated
2 cups almond roasted
2 cups  spinach leaves
2 cups tofu cubes
"""

let dressingText = """
1/2 cup nutritional yeast
1/3 cup water
1/3 cup soya souce
1/3 cup apple cider vinegar
2 cloves garlic
1 1/2 cup veggi oil
2 tps tahini paste
"""

let directionText = """


"""

struct ContentView: View {
    var body: some View {
        NavigationView {
            ScrollView {
                Group {
                    Image("Recipe")
                        .resizable()
                        .aspectRatio(contentMode: .fit)
                        .foregroundColor(.accentColor)
                }
                
                VStack(alignment: .leading) {
                    Text("Ingredient")
                        .font(.title2)
                        .frame(minWidth: 0, maxWidth: .infinity, alignment: .topLeading)
                        .background(Color.purple)
                    Spacer().frame(height: 20)
                    Text(ingredient)
                }.frame(
                    minWidth: 0,
                    maxWidth: .infinity,
                    minHeight: 0,
                    maxHeight: .infinity,
                    alignment: .topLeading
                  )
                
                VStack(alignment: .leading) {
                    Text("Dressing")
                        .font(.title2)
                        .frame(minWidth: 0, maxWidth: .infinity, alignment: .topLeading)
                        .background(Color.purple)
                    Spacer().frame(height: 20)
                    Text(dressingText)
                }.frame(
                    minWidth: 0,
                    maxWidth: .infinity,
                    minHeight: 0,
                    maxHeight: .infinity,
                    alignment: .topLeading
                  )
                
            }.navigationBarTitle("Recipe")
        }
        .padding()
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
