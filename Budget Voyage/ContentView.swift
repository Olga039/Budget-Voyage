//
//  ContentView.swift
//  Budget Voyage
//
//  Created by Olga on 5/10/24.
//

import SwiftUI

struct ContentView: View {
    @State private var pageIndex = 0
    @State private var isCreateTripViewActive = false
    private let pages: [Page] = Page.samplePages
    private let dotAppearance = UIPageControl.appearance()
    
    var body: some View {
        NavigationView {
            VStack {
                TabView(selection: $pageIndex){
                    ForEach(pages) { page in
                        VStack {
                            Spacer()
                            PageView(page: page)
                                .padding(.horizontal)
                            Spacer()
                            if page == pages.last {
                                Button("Let's Get Started", action: {
                                    isCreateTripViewActive = true
                                })
                                .buttonStyle(.bordered)
                                .fullScreenCover(isPresented: $isCreateTripViewActive, content: {
                                    CreateTripView()
                                })
                            } else {
                                Spacer()
                                Button("Next", action: incrementPage)
                            }
                        }
                        .tag(page.tag)
                    }
                }
                .animation(.easeInOut, value: pageIndex)
                .tabViewStyle(.page)
                .indexViewStyle(.page(backgroundDisplayMode: .interactive))
                Spacer(minLength: 20)
            }
            .onAppear{
                dotAppearance.currentPageIndicatorTintColor = .black
                dotAppearance.pageIndicatorTintColor = .gray
            }
            .padding()
            .navigationTitle("")
        }
        
        
    }
    
    func incrementPage() {
        pageIndex += 1
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}

