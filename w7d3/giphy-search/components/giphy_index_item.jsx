import React from 'react';

const GiphyIndexItem = ({giphy}) => {
  return (
    <img src={giphy.images.fixed_height.url} />
  );
};

export default GiphyIndexItem;
