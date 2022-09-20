import SwiftUI

struct ContentView: View {
    
    @State var bShow = false
    @State var bShow2 = false
    @State var bShow3 = false
    @State var bShow4 = false
    
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
                Text("Mostrar alerta")
                    .padding()
                    .background(.gray)
                    .foregroundColor(.white)
            }
            
            Button {
                bShow4.toggle()
            } label: {
                Text("Mostrar ActionSheet")
                    .padding()
                    .background(.green)
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
            Alert(title: Text("Prueba"), message: Text("Soy un contenido"),
                  primaryButton: Alert.Button.default(Text("No")) {
                    print("No")
                  },
                  secondaryButton: Alert.Button.destructive(Text("Si")) {
                    print("Si")
                  }
            )
        }
        
        .actionSheet(isPresented: $bShow4) {
            ActionSheet(title: Text("Quieres eliminar los datos?"), message: Text("Esto podra ayudar a restablecer la aplicacion pero se borrara la información"), buttons: [
                ActionSheet.Button.default(Text("Mas tarde")) {
                    print("Mas tarde")
                },
                ActionSheet.Button.destructive(Text("Eliminar")) {
                    print("Eliminando")
                },
                ActionSheet.Button.cancel()
            ])
        }
        
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
