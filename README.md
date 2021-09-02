# ULID.swift

Implementation of [ULID](https://github.com/ulid/spec/blob/master/README.md) in Swift.

## Usage

### Generate ULID

```swift
import ULID

// Generate ULID using current time
let ulid = ULID()

// Get ULID string
let string: String = ulid.ulidString
// Get ULID binary data
let data: Data = ulid.ulidData
```

### Parse ULID

```swift
import ULID

// Parse ULID string
let ulid = ULID(ulidString: "01D0YHEWR9WMPY4NNTPK1MR1TQ")!

// Get Timestamp as Date
let timestamp: Date = ulid.timestamp
```

### Convert between ULID and UUID

Both ULID and UUID are 128 bit data, so you can convert strings to each other.

#### From ULID to UUID

```swift
import Foundation
import ULID

let ulid = ULID(ulidString: "01D132CXJVYQ7091KZPZR5WH1X")!
let uuid = UUID(ulid)
print(uuid.uuidString) // 01684626-765B-F5CE-0486-7FB7F05E443D
```

#### From UUID to ULID

```swift
import Foundation
import ULID

let uuid = UUID(uuidString: "01684626-765B-F5CE-0486-7FB7F05E443D")!
let ulid = ULID(uuid)
print(ulid.ulidString) // 01D132CXJVYQ7091KZPZR5WH1X
```

## Installation

### Swift Package Manager

```
.package(
  name: "swift-ulid"
  url: "https://github.com/edudo-inc/swift-ulid.git",
  .upToNextMinor(from: "1.0.0")
)
```

## License

ULID.swift is released under the MIT license. See the [LICENSE](https://github.com/edudo-inc/swift-ulid/blob/main/LICENSE) file for more info.
