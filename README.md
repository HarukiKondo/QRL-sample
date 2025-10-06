# QRL-sample

QRL についての調査用リポジトリです。

## CLI

### CLI セットアップ手順

```bash
$ npm install -g @theqrl/cli
$ qrl-cli COMMAND
running command...
$ qrl-cli (-v|--version|version)
@theqrl/cli/1.10.2 darwin-arm64 node-v16.13.1
$ qrl-cli --help [COMMAND]
USAGE
  $ qrl-cli COMMAND
...
```

### CLI の使い方

```bash
qrl-cli status
```

ネットワークの情報を取得できる

```bash
Mainnet
✔ Network status:
    Network id The sleeper must awaken
    Network uptime 2658 days
    Epoch 38415
    Coins emitted 79173138.69150223
    Total coin supply 105000000
    Last block reward 1.404955715
✔ Node status:
    Version 4.0.0 python
    State SYNCED
    Connections 116
    Known peers 900
    Node uptime 142 days
    Block height 3841594
```

ウォレットアドレスの情報を取得できる

```bash
qrl-cli balance Q0105000fb8598ca6567504a7237794922deb861ea5d9987e24f274ddba55974d87015550c356b5
```

```bash
Mainnet
✔ Balance: 0 Quanta
```

## API

ベースエンドポイント URL

https://explorer.theqrl.org/api/

### 特定のブロック高の情報を取得したいとき

```bash
curl -XGET https://explorer.theqrl.org/api/block/34556
```

### 特定のトランザクション情報を取得したいとき

```bash
curl -XGET https://explorer.theqrl.org/api/tx/c9656d989bce2000c794314b73882b0ebb99fa1fe58e7a466a8a64e7b851a4c6
```

### 特定のウォレットアドレスの情報を取得したいとき

```bash
curl -XGET https://explorer.theqrl.org/api/a/Q01040007a591a62c23ed27adfe3df8eb812ee5e4b73e47fb8471e8d78ecd9b4cadc325ca36d86e
```

### その他

```bash
curl -XGET https://explorer.theqrl.org/api/emission/text

curl -XGET https://explorer.theqrl.org/api/reward

curl -XGET https://explorer.theqrl.org/api/rewardshor

curl -XGET https://explorer.theqrl.org/api/blockheight

curl -XGET https://explorer.theqrl.org/api/blockheight/text

curl -XGET https://explorer.theqrl.org/api/status

curl -XGET https://explorer.theqrl.org/api/miningstats
```

その他の API

```bash
curl -XGET 'https://richlist-api.theqrl.org/richlist?page=0'
```

ノードの情報を取得する

```bash
curl -XGET http://127.0.0.1:3000/grpc/mainnet/GetNodeState
```

## Docker を使った Node の立て方

### インストール

```bash
# Update && Upgrade Software Packages
sudo apt update && sudo apt upgrade -y

# Install the required packages for QRL
sudo apt-get -y install swig3.0 python3-dev python3-pip build-essential pkg-config libssl-dev libffi-dev libhwloc-dev libboost-dev cmake libleveldb-dev

# Install latest setuptools
pip3 install setuptools==65.7.0

# Install latest service identity package
pip3 install service-identity==21.1.0

# Install QRL
pip3 install -U qrl
```

## 参考文献

- [QRL 公式サイト](https://www.theqrl.org/)
- [GitHub](https://www.theqrl.org/)
- [開発者向けドキュメント](https://docs.theqrl.org/)
- [Web 上の Wallet](https://wallet.theqrl.org/)
- [ブロックエクスプローラー](https://testnet-explorer.theqrl.org/)
- [GitHub qrllib QRL 開発用のライブラリ](https://github.com/theQRL/qrllib)
