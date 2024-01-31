//
//  LaunchView.swift
//  actioticket
//
//  Created by Fermin Esquisabel Garcia on 19/1/24.
//

import SwiftUI

public struct LaunchView: View {
    
    @Environment(\.dismiss) var dismiss
    @State private var showHome: Bool = false

    @Environment(\.managedObjectContext) private var viewContext
    
    public init() {
        UINavigationBar.setAnimationsEnabled(false)
    }
    
    public var body: some View {
            NavigationStack {
                ZStack {
                    Color.blue.edgesIgnoringSafeArea(.all)
                    VStack {
                        Spacer()
                        Image("logo_palma", bundle: Bundle(identifier: "com.geoactio.actioticketlibrary"))
                            .resizable()
                            .aspectRatio(contentMode: .fit)
                            .padding(80)
                        Spacer()
                        Image("logo_actioticket", bundle: Bundle(identifier: "com.geoactio.actioticketlibrary"))
                            .resizable()
                            .aspectRatio(contentMode: .fit)
                            .padding(.leading, 100)
                            .padding(.trailing, 100)
                            .padding(.bottom, 20)
                    }
                }
                .onAppear {
                    DispatchQueue.main.asyncAfter(deadline: .now() + 3) {
                        showHome.toggle()
                    }
                }
                .navigationDestination(
                    isPresented: $showHome) {
                        HomeView() {
                            dismiss()
                        }.navigationBarBackButtonHidden()
                    }
            }
        }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        LaunchView()
    }
}
