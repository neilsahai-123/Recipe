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
Add 1 1/2 cup veggi oil in pan
Let it hot for some time
Add yeast, soya souce, apple cider vinegar and mix it well
Add 2 clovs garlic and tahini paste let it mix with other element
Add beeto, almont and spinach leaves and mix all ingredient well
Add tofu cubes and keep it on low flame.
Add water in it
Add brown rice and mix all element and keep it for few mins.

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
                VStack(alignment: .leading) {
                    Text("Directions")
                        .font(.title2)
                        .frame(minWidth: 0, maxWidth: .infinity, alignment: .topLeading)
                        .background(Color.purple)
                    Spacer().frame(height: 20)
                    Text(directionText)
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
