//
//  DetailEditView.swift
//  ScrumdingerApp
//
//  Created by Ali Eren Sevinç on 12.11.2024.
//

import SwiftUI

struct DetailEditView: View {
    @State private var scrum = DailyScrum.emptyScrum
    @State private var newAttendeeName = ""
    
    var body: some View {
        Form {
            Section(header: Text("Meeting Info")) {
                TextField("Title", text: $scrum.title)
                HStack {
                    Slider(
                        value: $scrum.lengthInMinutesAsDoubles,
                        in: 5...30,
                        step: 1
                    ) {
                        Text("Length")
                    }
                    .accessibilityValue("\(Int(scrum.lengthInMinutes)) minutes")
                    .accessibilityHidden(   true)
                    Spacer()
                    Text("\(scrum.lengthInMinutes) minutes")
                }
            }
            Section(header: Text("Attendees")) {
                ForEach(scrum.attendees) { attendee in
                    Text(attendee.name)
                }
                .onDelete { indices in
                    scrum.attendees.remove(atOffsets: indices)
                }
                HStack {
                    TextField("Add Attendee", text: $newAttendeeName)
                    Button(action: {
                        withAnimation {
                            let attendee = DailyScrum.Attendee(name: newAttendeeName)
                            scrum.attendees.append(attendee)
                            newAttendeeName = ""
                        }
                    }) {
                        Image(systemName: "plus.circle.fill")
                    }
                    .accessibilityLabel("Add attendee")
                    .disabled(newAttendeeName.isEmpty)
                }
            }
        }
    }
    
    struct DetailEditView_Previews: PreviewProvider {
        static var previews: some View {
            DetailEditView()
        }
    }
}
