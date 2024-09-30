//
//  ContentView.swift
//  DigitalClockApp
//
//  Created by Emir Okay on 29.09.2024.
//

import SwiftUI

struct ContentView: View {
	@State var currentTime = Date()
	@State var timer = Timer.publish(every: 1, on: .main, in: .common).autoconnect()
	@State var tick = "Tick"
	
	var body: some View {
		VStack {
			Text("Current time:")
				.font(.title)
				.foregroundStyle(.secondary)
				.bold()
			HStack {
				timeView(digit: getTimeDigit(from: currentTime, format: Date.FormatStyle().hour(.twoDigits(amPM: .omitted)), index: 0))
				timeView(digit: getTimeDigit(from: currentTime, format: Date.FormatStyle().hour(.twoDigits(amPM: .omitted)), index: 1))
			}
			HStack {
				timeView(digit: getTimeDigit(from: currentTime, format: Date.FormatStyle().minute(.twoDigits), index: 0))
				timeView(digit: getTimeDigit(from: currentTime, format: Date.FormatStyle().minute(.twoDigits), index: 1))
			}
			HStack {
				timeView(digit: getTimeDigit(from: currentTime, format: Date.FormatStyle().second(.twoDigits), index: 0))
				timeView(digit: getTimeDigit(from: currentTime, format: Date.FormatStyle().second(.twoDigits), index: 1))
			}
			Text("(\(tick))")
				.font(.footnote)
				.foregroundStyle(.secondary)
				.bold()
		}
		.onReceive(timer) { time in
			withAnimation(.interactiveSpring) {
				tick = (Int(time.formatted(.dateTime.second()))! % 2 == 0) ? "Tick" : "Tock"
			}
			currentTime = time
		}
	}

	func getTimeDigit(from date: Date, format: Date.FormatStyle, index: Int) -> String {
		let formattedTime = date.formatted(format)
		let digits = Array(formattedTime)
		return String(digits[index])
	}
}

struct timeView: View {
	var digit: String

	var body: some View {
		Text(digit)
			.padding()
			.font(.system(size: 180, weight: .bold, design: .default))
			.frame(width: 150, height: 170)
			.foregroundStyle(.secondary)
			.background(.secondary.opacity(0.4))
			.cornerRadius(15)
	}
}


#Preview {
    ContentView()
}
