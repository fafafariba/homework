
//
window.setTimeout( () => alert('HAMMERTIME'), 5000);

const hammerTime = (time) => {
  window.setTimeout( () => { //TODO: can you put time in here? Or switch?
    alert(`${time} is hammertime`);
  }, 5000);
};
//TODO: directions say 'pass a callback'. Is defining a callback inside
//where you would pass it considering passing?
