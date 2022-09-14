import SwiftUI

struct ContentView: View {
    
    @State var bShow = false
    @State var bShow2 = false
    @State var bShow3 = false
    
    var body: some View {
        VStack(spacing: 30) {
            Button {
                bShow.toggle()
            } label: {
                Text("Mostrar vista 1")
                    .padding()
                    .background(.red)
                    .foregroundColor(.white)
            }
            
            Button {
                bShow2.toggle()
            } label: {
                Text("Mostrar vista 2")
                    .padding()
                    .background(.purple)
                    .foregroundColor(.white)
            }
            
            Button {
                bShow3.toggle()
            } label: {
                Text("Mostrar vista 2")
                    .padding()
                    .background(.gray)
                    .foregroundColor(.white)
            }
        }
        
        .fullScreenCover(isPresented: $bShow) {
            VistaView(bShow: $bShow, color: .red)
        }
        
        .sheet(isPresented: $bShow2) {
            VistaView(bShow: $bShow2, color: .purple)
        }
        
        .alert(isPresented: $bShow3) {
            Alert(title: Text("Prueba"))
        }
        
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
