import React from 'react';
import GiphyIndexItem from './giphy_index_item';

const GiphysIndex = ({ giphys }) => {
  console.log(giphys, "from index");
  let item = <div></div>;
  if (giphys instanceof Array) {
    console.log("true");
    item =
    giphys.map((giphy,idx)=> (
      <li key={idx} className="giphy-li">
        <GiphyIndexItem giphy={giphy}/>
      </li>
    ));
  }
  return (
    <ul>
      {item}
    </ul>
  );
};

export default GiphysIndex;
