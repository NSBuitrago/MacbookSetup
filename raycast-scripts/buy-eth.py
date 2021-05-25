#!/Users/nsbuitrago/.pyenv/versions/3.9.0/bin/python

# Required parameters:
# @raycast.schemaVersion 1
# @raycast.title Buy ETH
# @raycast.mode compact

# Optional parameters:
# @raycast.icon 🤖
# @raycast.argument1 { "type": "text", "placeholder": "Order Amound ($USD)" }
# @raycast.packageName Crypto

# Documentation:
# @raycast.author Nicolas Buitrago
# @raycast.authorURL https://github.com/NSBuitrago

import json, hmac, hashlib, time, requests, base64, sys
from requests.auth import AuthBase
from configparser import ConfigParser

# authentication for exchange
# from CBPro: https://docs.pro.coinbase.com/#signing-a-message
# and coinbasepro-python https://github.com/danpaquin/coinbasepro-python
class CBProAuth(AuthBase):
    def __init__(self, api_key, secret_key, passphrase):
        self.api_key = api_key
        self.secret_key = secret_key
        self.passphrase = passphrase

    def __call__(self, request):
        timestamp = str(time.time())
        message = ''.join([timestamp, request.method,
                           request.path_url, (request.body or '')])
        hmac_key = base64.b64decode(self.secret_key)
        signiture = hmac.new(hmac_key, message.encode('ascii'), hashlib.sha256)
        #signiture_b64 = signiture.digest().encode('base64').rstrip('\n')
        signiture_b64 = base64.b64encode(signiture.digest()).decode('utf-8')


        request.headers.update({
            'CB-ACCESS-SIGN': signiture_b64,
            'CB-ACCESS-TIMESTAMP': timestamp,
            'CB-ACCESS-KEY': self.api_key,
            'CB-ACCESS-PASSPHRASE': self.passphrase,
            'Content-Type': 'Application/JSON'
        })
        return request


# market order buy
def buy_eth(funds):
    config_obj = ConfigParser()
    config_obj.read("config.ini")
    api_config = config_obj["CBP_API_CONFIG"]
    api_key = api_config["key"]
    api_secret = api_config["secret"]
    api_pass = api_config["pass"]

    auth = CBProAuth(api_key, api_secret, api_pass)
    api_url = "https://api.pro.coinbase.com/"

    if type(funds) == int:
        funds = str(funds)

    params = {"product_id": "ETH-USD",
              "side": "buy",
              "type": "market",
              "funds": funds,
              "stp": "dc"}
    
    return requests.post(api_url + 'orders', data=json.dumps(params), auth=auth)

if __name__ == "__main__":
    order = buy_eth(sys.argv[1])
    amount = round(float(order.json()['funds']), 2)
    asset = order.json()['product_id']
    print(f"Processing market buy: ${amount} {asset}")
