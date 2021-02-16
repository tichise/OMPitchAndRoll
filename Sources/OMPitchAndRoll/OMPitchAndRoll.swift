import SwiftUI

struct OMPitchAndRoll: View {
    
    @State var roll: CGFloat = 0
    @State var pitch: CGFloat = 0

    var rollString: String {
        return String(format: "%.0f", roll)
    }
    
    var pitchString: String {
        return String(format: "%.0f", pitch)
    }
    
    
    @available(iOS 13.0.0, *)
    var body: some View {
        HStack {
            Text(rollString).font(.body).foregroundColor(.green).frame(width: 30, alignment: .center)

            Text("Roll -").font(.caption2)
            
            VStack {
                Text(pitchString).font(.body).foregroundColor(.yellow)

                Text("Pitch -").font(.caption2)
                ZStack {
                    Rectangle()
                        .frame(width: 150, height: 150).foregroundColor(.white).border(Color.black)
                    
                    AnglePoint().offset(x: roll, y: pitch)
                }.padding(10)
                
                Text("Pitch +").font(.caption2)
                
                Text(pitchString).font(.body).foregroundColor(.yellow)

            }
            
            Text("Roll +").font(.caption2)
            Text(rollString).font(.body).foregroundColor(.green).frame(width: 30, alignment: /*@START_MENU_TOKEN@*/.center/*@END_MENU_TOKEN@*/)
        }
    }
}

struct OMPitchAndRoll_Previews: PreviewProvider {
    static var previews: some View {
        VStack(spacing: 10) {
            OMPitchAndRoll(roll: 25, pitch: 140)
        }
    }
}
