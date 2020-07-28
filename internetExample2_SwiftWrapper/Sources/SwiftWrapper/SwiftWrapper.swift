import CTimecode
import Cltc
public class SwiftWrapper {

    // Creates a new bitmap (initially empty)
    public init() {
        let v = Cltc.ltc_frame_set_parity()
    }
    // Delete the pointer!
    deinit {
        
    }
    // Add "value" inside the bitmap
    public func add(_ value:UInt32) {
        //croaring.roaring_bitmap_add(self.ptr, value)
    }
  
}

// enum LTC_TV_STANDARD {
// 	LTC_TV_525_60, ///< 30fps
// 	LTC_TV_625_50, ///< 25fps
// 	LTC_TV_1125_60,///< 30fps
// 	LTC_TV_FILM_24 ///< 24fps
// };
