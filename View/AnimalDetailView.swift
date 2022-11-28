//
//  AnimalDetailView.swift
//  AfricaAppSwiftUI
//
//  Created by Bertuğ Horoz on 23.11.2022.
//

import SwiftUI

struct AnimalDetailView: View {
    // PROPERTIES
    @State private var buttonText : String = "Learn More"
    @State private var toggle : Bool = false
    @State private var lineLimit : Int = 10
    let animal : Animal
    // BODY
    var body: some View {
        ScrollView(.vertical, showsIndicators: false) {
            VStack(alignment : .center, spacing: 20) {
                // HERO IMAGE
                Image(animal.image)
                    .resizable()
                    .scaledToFit()
                // TITLE
                Text(animal.name.uppercased())
                    .font(.largeTitle)
                    .fontWeight(.heavy)
                    .multilineTextAlignment(.center)
                    .padding(.vertical, 8)
                    .foregroundColor(.primary)
                    .background(Color.accentColor.frame(height: 6).offset(y: 24))
                // HEADLINE
                Text(animal.headline)
                    .font(.headline)
                    .multilineTextAlignment(.leading)
                    .foregroundColor(.accentColor)
                    .padding(.horizontal)
                // GALLERY
                Group {
                    HeadingView(headingImage: "photo.on.rectangle.angled", headingText: "Wilderness in Pictures.")
                        .padding(.bottom, -30)
                    InsetGalleryView(animal: animal)
                }
                .padding()
                // FACTS
                Group {
                    HeadingView(headingImage: "questionmark.circle", headingText:  "Did you know?")
                    InsetFactView(animal: animal)
                }
                .padding(.horizontal)
                // DESCRIPTION
                Group {
                    HeadingView(headingImage: "info.circle", headingText: "All about \(animal.name)")
                    VStack {
                        Text(animal.description)
                            .multilineTextAlignment(.leading)
                            .layoutPriority(1)
                        .lineLimit(lineLimit)
                        Button(buttonText) {
                            withAnimation(.easeOut(duration: 0.15)) {
                                if toggle == false  {
                                    lineLimit = 100
                                    buttonText = "Show Less"
                                    toggle = true
                                } else {
                                    lineLimit = 10
                                    buttonText = "Learn More"
                                    toggle = false
                                }
                            }
                        }
                        .fontWeight(.heavy)
                        .padding(.top , 15)
                        .foregroundColor(.accentColor)
                    }
                }
                .padding(.horizontal)
                // MAP
                Group {
                    HeadingView(headingImage: "map", headingText: "National Parks")
                    InsetMapView()
                }
                .padding(.horizontal)
                // LINK
                Group {
                    HeadingView(headingImage: "books.vertical", headingText: "Learn More")
                    ExternalWebLinkView(animal: animal)
                }
                .padding(.horizontal)
            } // : VSTACK
            .navigationBarTitle("Learn about \(animal.name)", displayMode: .inline)
        } // : SCROLL
    }
}
// PREVIEW
struct AnimalDetailView_Previews: PreviewProvider {
    static let animal: [Animal] = Bundle.main.decode("animals.json")
    static var previews: some View {
        NavigationView{
            AnimalDetailView(animal: animal[0])
        }
        .previewDevice("iPhone 14 Pro Max")
    }
}
