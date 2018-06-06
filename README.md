# CSLogger
Based on CocoaLumberjack,CSLogger,different types of log files can be distinguished into different folders.
## Setup

1. **Clone the repo**

  ```
  $ git clone https://github.com/KoonChaoSo/CSLogger.git
  $ cd CSLogger
  ```

2. **Install dependencies** (cocoapods):

  ```
  $ pod install
  ```

3. **Start Test:**

  ```
  $ open your Xcode
  ```
##### Obj-C usage
You can `#import "CSLogger.h"`.


```objc
    //分开logger不同的flag
    [DDLog addLogger:[CSLoggerAssembler createCSFileLogger:1000]];
    [DDLog addLogger:[CSLoggerAssembler createCSFileLogger:1001]];
    [DDLog addLogger:[DDTTYLogger sharedInstance]];
...

If you need log, you can `#import "CSLogMacro.h"`
CSLOG_TEST_DDLOG(@"TEST A");
CSLOG_TEST_DDLOG2(@"TEST B");
