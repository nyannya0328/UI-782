//
//  NewTabView.swift
//  UI-782
//
//  Created by nyannyan0328 on 2022/11/03.
//

import SwiftUI

struct NewTabView: View {
    var isRootView : Bool = false
    var tab : Tab?
    
    @State var txt : String = ""
    
    @Environment(\.openWindow) var windowOpen
    var body: some View {
        VStack(spacing:0){
            
            HStack{
                
                CustomButtonView(systemImage: "arrow.left") {
                    
                }
                .foregroundColor(.gray)
                
                CustomButtonView(systemImage: "arrow.right") {
                    
                }
                .foregroundColor(.gray)
                
                CustomButtonView(systemImage: "arrow.clockwise") {
                    
                }
                .foregroundColor(.gray)
                
                SearchView()
                CustomButtonView(systemImage: "star.fill") {
                    
                }
                .foregroundColor(.gray)
                
                
                Menu {
                    
                    Button {
                        
                        let newTab = Tab()
                        windowOpen(value: newTab)
                        
                    } label: {
                        
                        Text("New Window")
                        
                    }
                    .keyboardShortcut("o")
                    
                    Button {
                        
                    } label: {
                        
                        Text("Help")
                        
                    }
                    
                    Button(isRootView ? "Quit" : "Close Window"){
                        
                        if isRootView{
                            
                            NSApplication.shared.terminate(nil)
                            
                        }
                        else{
                            
                            NSApplication.shared.mainWindow?.close()
                            
                        }
                        
                    }
                    .keyboardShortcut("o")
                    
               
                    
                } label: {
                    
                    Image(systemName: "ellipsis")
                        .font(.title2)
                        .rotationEffect(.init(degrees: 90))
                        .frame(width: 20,height: 20)
                        .contentShape(Rectangle())
                    
                    
                }
                .buttonStyle(.plain)
                .keyboardShortcut("m")

             
                
                
                
            }
            .padding(.horizontal,10)
            .padding(.vertical,8)
            .background{
             
                RoundedRectangle(cornerRadius: 10, style: .continuous)
                    .fill(Color("BG"))
            }
            
            ZStack{
                
                Color("NavBar")
                
            }
            
            
        }
        .frame(minWidth: 500,minHeight: 400)
    }
    
    @ViewBuilder
    func SearchView ()->some View{
        
        
        TextField("Seach", text: $txt)
            .padding(.vertical,5)
            .padding(.horizontal)
            .background{
                
                Capsule()
                    .fill(.black)
                
            }
            .textFieldStyle(.plain)
        
    }
    @ViewBuilder
    func CustomButtonView (systemImage : String,onTap : @escaping()->())->some View{
        
        
        Button {
            
            onTap()
            
        } label: {
            
             Image(systemName: systemImage)
                .font(.title2.weight(.bold))
                .contentShape(Rectangle())
                
            
        }
        .buttonStyle(.plain)
        
        
    }
}

struct NewTabView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
