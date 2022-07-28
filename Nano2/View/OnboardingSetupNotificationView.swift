//
//  OnboardingSetupNotificationView.swift
//  Nano2
//
//  Created by Anselmus Pavel Adriska on 25/07/22.
//

import SwiftUI

struct OnboardingSetupNotificationView: View {
    var body: some View {
        VStack {
            Spacer()
            
            
            Image(systemName: "face.smiling")
                .resizable()
                .frame(width: 200, height: 200)
                .padding()
            
            
            Spacer()
            
            
            Group {
                Text("Often Forget to Note Things Down?")
                    .font(.title2)
                    .fontWeight(.bold)
                Text("Setup daily notification to get reminded to note your daily activity, resource, or reflection.")
                    .padding()
            }
            .multilineTextAlignment(.center)
            
            
            Spacer()
            
            
            Group {
                Button("Setup now") {
                    print("Setup notification")
                }
                .padding()
                .frame(maxWidth: .infinity)
                .background(.blue)
                .foregroundColor(.white)
                .cornerRadius(9)

                Button("I'll do it later") {
                    print("Go to next screen")
                }
                .frame(maxWidth: .infinity)
                .padding()
            }
            .font(.headline)
            
            Spacer()
        }
        .padding()
    }
}

struct OnboardingSetupNotificationView_Previews: PreviewProvider {
    static var previews: some View {
        OnboardingSetupNotificationView()
    }
}
