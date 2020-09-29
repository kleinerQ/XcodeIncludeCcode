import CTimecode
import Foundation

public class Sw {

    // Creates a new bitmap (initially empty)
    public init() {
        
    }
    // Delete the pointer!
    deinit {
        
    }
    // encode ltc audio file
    public func encodeAndSaveToLocal(fileURL:URL) {
        let debugDoc: UnsafeMutablePointer<FILE>
        guard let debugFile = fileURL.withUnsafeFileSystemRepresentation( { fopen($0, "w") }) else {
                // Could not open file ...
                return
        }
        let v = CTimecode.encodeAndSaveToLocal(debugFile)
    }
    
    // decode ltc audio file
    public func decodeLocalFile(fileURL:URL) {
        let debugDoc: UnsafeMutablePointer<FILE>
        guard let debugFile = fileURL.withUnsafeFileSystemRepresentation( { fopen($0, "r") }) else {
                // Could not open file ...
                return
        }
        let v = CTimecode.decodeLocalFile(debugFile)
    }
}
