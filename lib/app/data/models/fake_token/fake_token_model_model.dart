class FakeTokenModel {
  String? label;
  String? fullLabel;
  String? description;
  double? previousPrice;
  double? actualPrice;
  double? volume;
  int? rank;
  double? marketCap;

  FakeTokenModel(
      {this.label,
      this.fullLabel,
      this.description,
      this.previousPrice,
      this.actualPrice,
      this.volume,
      this.rank,
      this.marketCap});

  FakeTokenModel.fromJson(Map<String, dynamic> json) {
    label = json['label'];
    fullLabel = json['fullLabel'];
    description = json['description'];
    previousPrice = json['previousPrice'];
    actualPrice = json['actualPrevious'];
    volume = json['volume'];
    rank = json['rank'];
    marketCap = json['marketCap'];
  }

  Map<String, dynamic> toJson() {
    final data = <String, dynamic>{};
    data['label'] = label;
    data['fullLabel'] = fullLabel;
    data['description'] = description;
    data['previousPrice'] = previousPrice;
    data['actualPrevious'] = actualPrice;
    data['volume'] = volume;
    data['rank'] = rank;
    data['marketCap'] = marketCap;
    return data;
  }
}

final List<FakeTokenModel> fake_token_data = [
  FakeTokenModel(
    label: 'btc',
    fullLabel: 'Bitcoin',
    previousPrice: 4112.06,
    actualPrice: 4112.06,
    rank: 1,
    description:
        'Bitcoin is a cryptocurrency. It is a decentralized digital currency that is based on cryptography. As such, it can operate without the need of a central authority like a central bank or a company. It is unlike government-issued or fiat currencies such as US Dollars or Euro in which they are controlled by the country’s central bank. The decentralized nature allows it to operate on a peer-to-peer network whereby users are able to send funds to each other without going through intermediaries.',
  ),
  FakeTokenModel(
    label: 'eth',
    fullLabel: 'Ethereum',
    previousPrice: 4112.06,
    actualPrice: 4112.06,
    rank: 2,
    description: 'Ethereum is a global, open-source platform for decentralized applications. In other words, the vision is to create a world computer that anyone can build applications in a decentralized manner; while all states and data are distributed and publicly accessible. Ethereum supports smart contracts in which developers can write code in order to program digital value. Examples of decentralized apps (dapps) that are built on Ethereum includes token, non-fungible tokens, decentralized finance apps, lending protocol, decentralized exchanges, and much more.',
  ),
  FakeTokenModel(
    label: 'usdt',
    fullLabel: 'Tether',
    previousPrice: 1.1,
    actualPrice: 1.0,
    rank: 3,
    description: 'Tether is a stablecoin pegged to the US Dollar. A stablecoin is a type of cryptocurrency whose value is pegged to another fiat currency like the US Dollar or to a commodity like Gold.',
  ),
  FakeTokenModel(
    label: 'bnb',
    fullLabel: 'Binance Coin',
    previousPrice: 4142.06,
    actualPrice: 4112.06,
    rank: 4,
    description: 'Binance Coin (BNB) is an exchange-based token created and issued by the cryptocurrency exchange Binance. Initially created on the Ethereum blockchain as an ERC-20 token in July 2017, BNB was migrated over to Binance Chain in February 2019 and became the native coin of the Binance Chain.',
  ),
  FakeTokenModel(
    label: 'usdc',
    fullLabel: 'USD Coin',
    previousPrice: 1.00,
    actualPrice: 1.00,
    rank: 5,
    description: 'USDC is a fully collateralized US dollar stablecoin. USDC is the bridge between dollars and trading on cryptocurrency exchanges. The technology behind CENTRE makes it possible to exchange value between people, businesses and financial institutions just like email between mail services and texts between SMS providers. We believe by removing artificial economic borders, we can create a more inclusive global economy.',
  ),
  FakeTokenModel(
    label: 'xrp',
    fullLabel: 'Ripple',
    previousPrice: 4142.06,
    actualPrice: 4112.06,
    rank: 6,
    description: 'Ripple is a privately-held fintech company that provides a global payment solution via its patented payment network called Ripple Network (also known as RippleNet). RippleNet is a payment network that is built on top of Ripple’s consensus ledger, called XRP Ledger (also known as XRPL). Ripple funded the development of the open-source XRP Ledger.',
  ),
  FakeTokenModel(
    label: 'ada',
    fullLabel: 'Cardano',
    previousPrice: 4112.06,
    actualPrice: 4112.06,
    rank: 7,
    description: 'Every blockchain project has a token of value commonly referred to as a cryptocurrency. Ada is the cryptocurrency on the Cardano blockchain. With Ada, holders can send value between friends, pay for a good or service, deposit funds on an exchange, or enter an application. To perform a transfer on the settlement layer requires you own Ada, or acquire Ada through an exchange. It will also be the native token to be used in applications built on the computation layer.',
  ),
  FakeTokenModel(
    label: 'sol',
    fullLabel: 'Solana',
    previousPrice: 4142.06,
    actualPrice: 4112.06,
    rank: 8,
    description: 'Solana crypto is a high throughput blockchain based on the Proof of History (PoH) and Proof of Stake (PoS) consensus. Built by a team of networking engineers, Solana aims to become the blockchain infrastucture for modern internet applications.',
  ),
  // FakeTokenModel(
  //   label: 'avax',
  //   fullLabel: 'Avalanche',
  //   previousPrice: 4112.06,
  //   actualPrevious: 4112.06,
  //   rank: 9,
  //   description: 'Avalanche is a high throughput smart contract blockchain platform. Validators secure the network through a proof-of-stake consensus protocol. It is said to be fast, low cost, and environmental friendly.',
  // ),
  // FakeTokenModel(
  //   label: 'luna',
  //   fullLabel: 'Terra',
  //   previousPrice: 4112.06,
  //   actualPrevious: 4112.06,
  //   rank: 10,
  //   description: 'Luna is the reserve currency of the Terra platform. It has three core functions: i) mine Terra transactions through staking, ii) ensure the price stability of Terra stablecoins and iii) provide incentives for the platform’s blockchain validators.',
  // ),
  FakeTokenModel(
    label: 'dot',
    fullLabel: 'Polkadot',
    previousPrice: 4112.06,
    actualPrice: 4112.06,
    rank: 11,
    description: 'Polkadot is a platform that allows diverse blockchains to transfer messages, including value, in a trust-free fashion; sharing their unique features while pooling their security. In brief, Polkadot is a scalable heterogeneous multi-chain technology.',
  ),
  FakeTokenModel(
    label: 'doge',
    fullLabel: 'Dogecoin',
    previousPrice: 4112.06,
    actualPrice: 4112.06,
    rank: 12,
    description: 'Dogecoin is a cryptocurrency that was created on December 6th, 2013 based on the popular "Doge" Internet meme and features a Shiba Inu on its logo.',
  ),
];
