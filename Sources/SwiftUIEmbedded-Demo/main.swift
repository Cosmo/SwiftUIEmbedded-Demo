import SwiftUIEmbedded
import OpenSwiftUI
import Pixels
import Glibc

let fp = fopen("/dev/fb0", "w")

if fp != nil {
    let host = HostingController(rootView: MainView(), width: 720, height: 720)
    let byteArray: [UInt8] = host.canvas.bytes
    fwrite(byteArray, 1, byteArray.count, fp)
}
