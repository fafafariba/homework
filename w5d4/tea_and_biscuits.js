const readline = require('readline');
const reader = readline.createInterface({
  input: process.stdin,
  output: process.stdout,
});

const ask = () => {
  reader.question("Would you like some tea ? ", (teaResp) => {
    console.log(`You said : ${teaResp}`);
    reader.question("Would you like some biscuits ? ", (bisResp) => {
      console.log(`You said : ${bisResp}`);

      const firstRes = (teaResp.toLowerCase() === 'yes') ? "do" : "don't";
      const secondRes = (bisResp.toLowerCase() === 'yes') ? "do" : "don't";

      console.log(`So you ${firstRes} want tea and you ${secondRes} want biscuits.`);
      reader.close();
    });
  });
};

ask();
