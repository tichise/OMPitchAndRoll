import SwiftUI

public struct OMPitchAndRoll: View {
    
    @Binding public var roll: CGFloat
    @Binding public var pitch: CGFloat

    var rollString: String {
        return String(format: "%.0f", roll)
    }
    
    var pitchString: String {
        return String(format: "%.0f", pitch)
    }
    
    public init(roll: Binding<CGFloat>, pitch: Binding<CGFloat>) {
        self._roll = roll
        self._pitch = pitch
    }
    
    public var body: some View {
        HStack {
            Text(rollString).font(.body).frame(width: 30, alignment: .center)

            Text("Roll -").font(.caption2)
            
            VStack {
                Text(pitchString).font(.body)

                Text("Pitch -").font(.caption2)
                ZStack {
                    Rectangle()
                        .frame(width: 150, height: 150).foregroundColor(.white).border(Color.black)
                    
                    AnglePoint().offset(x: roll, y: pitch)
                }.padding(10)
                
                Text("Pitch +").font(.caption2)
                
                Text(pitchString).font(.body)

            }
            
            Text("Roll +").font(.caption2)
            Text(rollString).font(.body).frame(width: 30, alignment: /*@START_MENU_TOKEN@*/.center/*@END_MENU_TOKEN@*/)
        }
    }
}

struct OMPitchAndRoll_Previews: PreviewProvider {
    static var previews: some View {
        VStack(spacing: 10) {
            OMPitchAndRoll(roll: .constant(25), pitch: .constant(90))
        }
    }
}
