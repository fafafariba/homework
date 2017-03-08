import { RECEIVE_SEARCH_GIPHYS } from '../actions/giphy_actions';
import union from 'lodash/union';

const GiphysReducer = (state = {}, action) => {
  switch(action.type){
    case RECEIVE_SEARCH_GIPHYS:
      // let newState = union([], state);
      // action.giphys.forEach(giphy => newState.push(giphy));
      return action.giphys;
    default:
      return state;
  }
};

export default GiphysReducer;
