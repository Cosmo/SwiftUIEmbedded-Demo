import SwiftUIEmbedded
import OpenSwiftUI
import Pixels
#if os(Linux)
import Glibc

// Replace `width` and `height` with your display resolution
let width = 720
let height = 720



let host = HostingController(rootView: MainView(), width: width, height: height)
var byteArray = [UInt8]()

host.calculateTreeSizes()
host.createPixelBuffer().forEach {
    byteArray.append(UInt8($0 >> 24 & 0xff))
    byteArray.append(UInt8($0 >> 16 & 0xff))
    byteArray.append(UInt8($0 >> 8 & 0xff))
    byteArray.append(UInt8(0xff))
}

let fp = fopen("/dev/fb0", "w")

if fp != nil {
    fwrite(byteArray, 1, byteArray.count, fp)
} else {
    print("Can't write to Framebuffer.")
}

#else
print("Run this on Linux.")
#endif
