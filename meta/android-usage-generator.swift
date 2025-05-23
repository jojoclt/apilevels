import Foundation

/*
Eugene's low tech iOS usage generator. Easiest to run this on CodeRunner for macOS.

Steps:
1. Go to https://gs.statcounter.com/android-version-market-share/mobile-tablet/worldwide.
2. Select "Download Data (.csv)"
3. From the CSV file, copy the first line (column names) and last line (latest data).
*/

let data = """
"Date","13.0","14.0","12.0","11.0","10.0","9.0 Pie","8.0 Oreo","8.1 Oreo","6.0 Marshmallow","7.0 Nougat","5.1 Lollipop","5.0 Lollipop","7.1 Nougat","4.4 KitKat","15.0","4.3 Jelly Bean","24.1","4.2 Jelly Bean","4.1 Jelly Bean","23.1","24.7","4.0 Ice Cream Sandwich","Other"
2024-11,18.74,36.45,13.11,11.9,6.25,3.73,2.91,1.27,1.9,0.92,0.46,1.39,0.28,0.13,0.41,0.02,0.05,0.01,0.01,0,0.01,0.01,0.05
"""

let rows = data.split(separator: "\n")

let androidVersions = Array(rows[0].split(separator: ",")[1...])
let percentages = Array(rows[1].split(separator: ",")[1...])

var android15 = 0.0
var android14 = 0.0
var android13 = 0.0
var android12 = 0.0
var android11 = 0.0
var android10 = 0.0
var android9 = 0.0
var android8point1 = 0.0
var android8point0 = 0.0
var android7point1 = 0.0
var android7point0 = 0.0
var android6 = 0.0
var android5point1 = 0.0
var android5point0 = 0.0
var android4point4 = 0.0
var android4point3 = 0.0
var android4point2 = 0.0
var android4point1 = 0.0
var android4point0 = 0.0

for i in 0..<androidVersions.count {
	let (version, percentage) = (String(androidVersions[i]), Double(percentages[i])!)
	
	if version.contains("21.") || version.contains("22.") {
		continue // Ignore weird versions
	} else if version.contains("15.") {
		android15 += percentage
	} else if version.contains("14.") {
		android14 += percentage
	} else if version.contains("13.") {
		android13 += percentage
	} else if version.contains("12.") {
		android12 += percentage
	} else if version.contains("11.") {
		android11 += percentage
	} else if version.contains("10.") {
		android10 += percentage
	} else if version.contains("9.") {
		android9 += percentage
	} else if version.contains("8.1") {
		android8point1 += percentage
	} else if version.contains("8.0") {
		android8point0 += percentage
	} else if version.contains("7.1") {
		android7point1 += percentage
	} else if version.contains("7.0") {
		android7point0 += percentage
	} else if version.contains("6.") {
		android6 += percentage
	} else if version.contains("5.1") {
		android5point1 += percentage
	} else if version.contains("5.0") {
		android5point0 += percentage
	} else if version.contains("4.4") {
		android4point4 += percentage
	} else if version.contains("4.3") {
		android4point3 += percentage
	} else if version.contains("4.2") {
		android4point2 += percentage
	} else if version.contains("4.1") {
		android4point1 += percentage
	} else if version.contains("4.0") {
		android4point0 += percentage
	}
}

//var android13 = 0.0
//var android12 = 0.0
//var android11 = 0.0
//var android10 = 0.0
//var android9 = 0.0
//var android8point1 = 0.0
//var android8point0 = 0.0
//var android7point1 = 0.0
//var android7point0 = 0.0
//var android6 = 0.0
//var android5point1 = 0.0
//var android5point0 = 0.0
//var android4point4 = 0.0
//var android4point3 = 0.0
//var android4point2 = 0.0
//var android4point1 = 0.0
//var android4point0 = 0.0

android14 += android15
android13 += android14
android12 += android13
android11 += android12
android10 += android11
android9 += android10
android8point1 += android9
android8point0 += android8point1
android7point1 += android8point0
android7point0 += android7point1
android6 += android7point0
android5point1 += android6
android5point0 += android5point1
android4point4 += android5point0
android4point3 += android4point4
android4point2 += android4point3
android4point1 += android4point2
android4point0 += android4point1

// Round to 1 decimal place
android13 = round(android13 * 10) / 10.0
android12 = round(android12 * 10) / 10.0
android11 = round(android11 * 10) / 10.0
android10 = round(android10 * 10) / 10.0
android9 = round(android9 * 10) / 10.0
android8point1 = round(android8point1 * 10) / 10.0
android8point0 = round(android8point0 * 10) / 10.0
android7point1 = round(android7point1 * 10) / 10.0
android7point0 = round(android7point0 * 10) / 10.0
android6 = round(android6 * 10) / 10.0
android5point1 = round(android5point1 * 10) / 10.0
android5point0 = round(android5point0 * 10) / 10.0
android4point4 = round(android4point4 * 10) / 10.0
android4point3 = round(android4point3 * 10) / 10.0
android4point2 = round(android4point2 * 10) / 10.0
android4point1 = round(android4point1 * 10) / 10.0
android4point0 = round(android4point0 * 10) / 10.0

print("Android 15: \(android15)")
print("Android 14: \(android14)")
print("Android 13: \(android13)")
print("Android 12: \(android12)")
print("Android 11: \(android11)")
print("Android 10: \(android10)")
print("Android 9: \(android9)")
print("Android 8.1: \(android8point1)")
print("Android 8.0: \(android8point0)")
print("Android 7.1: \(android7point1)")
print("Android 7.0: \(android7point0)")
print("Android 6: \(android6)")
print("Android 5.1: \(android5point1)")
print("Android 5.0: \(android5point0)")
print("Android 4.4: \(android4point4)")
print("Android 4.3: \(android4point3)")
print("Android 4.2: \(android4point2)")
print("Android 4.1: \(android4point1)")
print("Android 4.0: \(android4point0)")

