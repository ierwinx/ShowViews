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
            
        }
    }
}

struct VistaView_Previews: PreviewProvider {
    static var previews: some View {
        VistaView(bShow: .constant(false), color: .red)
    }
}
