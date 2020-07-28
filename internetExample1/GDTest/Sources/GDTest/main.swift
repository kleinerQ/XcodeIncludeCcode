//// import either Cgdlinux or Cgdmac depending on our platform, along with whatever framework gives us standard C functions
//#if canImport(Darwin)
//import Darwin
//import Cgdmac
//#else
//import Glibc
//import Cgdlinux
//#endif
//
//// create an 800x600 image
//let image = gdImageCreateTrueColor(800, 600)
//
//// create two colors: bright red and bright blue – GD uses 0-255 for colors, and 0-127 for alpha,
//// but the alpha is inverted so 0 means "opaque" and 127 means "transparent".
//let red = gdImageColorAllocateAlpha(image, 255, 0, 0, 0)
//let blue = gdImageColorAllocateAlpha(image, 0, 0, 255, 0)
//
//// fill the image red starting from the top-left corner, then draw a blue ellipse on top; coordinates are X, Y, width, height
//gdImageFill(image, 0, 0, red)
//gdImageFilledEllipse(image, 400, 300, 200, 100, blue)
//
//// open a file for Writing (w) in Binary mode (b)
//let outputFile = fopen("output222.png", "wb")
//
//// close that file once our code finishes
//defer { fclose(outputFile) }
//
//// write out the image
//gdImagePng(image, outputFile)


import Foundation
import SwiftGD

let image = Image(width: 800, height: 600)
let cyan = Color(red: 0, green: 1, blue: 1, alpha: 1)
let magenta = Color(red: 1, green: 0, blue: 1, alpha: 1)

image.fill(cyan)
image.fillEllipse(center: CGPoint(x: 400, y: 300), size: CGSize(width: 200, height: 100), color: magenta)
image.write()
