#!/bin/bash

# Required parameters:
# @raycast.schemaVersion 1
# @raycast.title ETH Price
# @raycast.mode inline
# @raycast.refreshTime 1h

# Optional parameters:
# @raycast.icon 💰
# @raycast.packageName Crypto

# @Documentation:
# @raycast.author Nicolas Buitrago
# @raycast.authorURL https://github.com/NSBuitrago



ethPrice=$(curl -s https://api.coinbase.com/v2/prices/ETH-USD/spot | python -c "import json, sys; print(json.load(sys.stdin)['data']['amount'])")

echo "\$${ethPrice} USD" 

