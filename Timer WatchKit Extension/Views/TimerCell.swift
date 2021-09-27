//
//  TimerCell.swift
//  Timer WatchKit Extension
//
//  Created by Frank Bara on 9/25/21.
//

import SwiftUI

struct TimerCell: View {
    
    var leftTimer: TimerModel
    var rightTimer: TimerModel
    
    var body: some View {
        HStack {
            NavigationLink(destination: TimerView(timerModel: leftTimer),
                           label: {
                dialView(title: leftTimer.timeTitle, subTitle: leftTimer.unitTitle)
            })
                .buttonStyle(PlainButtonStyle())
            
            NavigationLink(destination: TimerView(timerModel: rightTimer),
                           label: {
                dialView(title: rightTimer.timeTitle, subTitle: rightTimer.unitTitle)
            })
                .buttonStyle(PlainButtonStyle())
        }.foregroundColor(Color.white.opacity(0.3))
            .frame(height: WKInterfaceDevice.current().screenBounds.height * 0.45)
    }
    
    private func dialView(title: String, subTitle: String) -> some View {
        ZStack {
            TickView()
            VStack {
                Text(title)
                    .font(.system(size: 24))
                    .bold()
                    .foregroundColor(.orange)
                
                Text(subTitle)
                    .font(.system(size: 12))
                    .foregroundColor(.white)
            }
        }
        .padding()
        .background(Color.white.opacity(0.2))
        .clipShape(Circle())
    }
}

struct TimerCell_Previews: PreviewProvider {
    static var previews: some View {
        TimerCell(leftTimer: TimerModel.allTimerValues()[0], rightTimer: TimerModel.allTimerValues()[1])
    }
}
