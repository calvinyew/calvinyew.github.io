import React, { Component } from 'react'
import AddLand from './AddLand';
import LandsForSale from './LandsForSale';
import SoldLands from './SoldLands';
import YourLands from './YourLands';

class Content extends Component {
  render() {
    const { addLand, lands, buyLand, account, listLand } = this.props
    return (
      <div id="content">
        {
          account === '0x71201D68DaCb3207BaB8Bb9CFB34c52BF656E32b' ? // modify to contract owner
            <AddLand addLand={addLand} /> :
            //<AddProperty addLand={addLand} /> :
            <div></div>
        }
        <p>&nbsp;</p>
        <LandsForSale lands={lands} buyLand={buyLand} account={account} />
        <p>&nbsp;</p>
        <SoldLands lands={lands} account={account} listLand={listLand} />
        <p>&nbsp;</p>
        <YourLands lands={lands} listLand={listLand} account={account} />
      </div>
    )
  }
}

export default Content