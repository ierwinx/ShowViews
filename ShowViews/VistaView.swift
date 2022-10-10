import SwiftUI

struct VistaView: View {
    
    @Binding var bShow: Bool
    var color: Color
    
    var body: some View {
        ZStack {
            color
                .ignoresSafeArea(.all)
            
            VStack(spacing: 20) {
                Text("Estas en la vista")
                    .foregroundColor(.white)
                
                Button {
                    bShow.toggle()
                } label: {
                    Text("Dismiss")
                        .padding()
                        .foregroundColor(.black)
                        .background(.white)
                }
            }
            .presentationDetents([.medium, .large, .fraction(1/3)]) //si se quita el .large y se agrega una fraccion grande tiene otro efecto visual .fraction(2.7/3)
            .presentationDragIndicator(.visible) // este es opcional, si no se agrega siempre se muestra la barrita para arrastras tambien esta el .hidden
        }
    }
}

struct VistaView_Previews: PreviewProvider {
    static var previews: some View {
        VistaView(bShow: .constant(false), color: .red)
    }
}
