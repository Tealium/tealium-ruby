# Tealium Collect for Ruby

[![License](https://img.shields.io/badge/license-Proprietary-blue.svg?style=flat
            )](https://github.com/Tealium/tealium-ruby/blob/master/LICENSE.txt)
[![Language](https://img.shields.io/badge/Language-Ruby-orange.svg?style=flat
             )](https://www.ruby-lang.org/en/documentation/)

## Documentation
For full documentation on Tealium HTTP API, please see the Tealium Learning Community:
[https://community.tealiumiq.com/t5/Universal-Data-Hub/Tealium-Collect-HTTP-API/ta-p/16893](https://community.tealiumiq.com/t5/Universal-Data-Hub/Tealium-Collect-HTTP-API/ta-p/16893)  

## Getting Started
Install the `tealium` gem:

```
$ gem install tealium-1.0.0.gem
```

Import the Tealium package:
```
require 'tealium'
```

Usage:
```
# load tealium gem
require 'tealium'

# initialize tealium with you account, profile, and datasource (optional)
teal = Tealium.new("your-tealium-account", "your-tealium-profile", "datasource_id")

# track your event with an event name and optional custom data
teal.track("my_event", {:key1 => "value"})
```

## License
Use of this software is subject to the terms and conditions of the license agreement contained in the file titled "LICENSE.txt".  Please read the license before downloading or using any of the files contained in this repository. By downloading or using any of these files, you are agreeing to be bound by and comply with the license agreement.

---
Copyright (C) 2012-2019, Tealium Inc.
