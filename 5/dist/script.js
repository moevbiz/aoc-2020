const fs = require("fs");

let EINE_DO = fs.readFileSync(__dirname + "/input.txt", "utf8");
EINE_DO = EINE_DO.split("\n");

const findLargest = (EINE_DO) => {
  for (i = 0; i < EINE_DO.length; i++) {
    EINE_DO[i] = strToBin(EINE_DO[i]);
  }

  console.log(Math.max(...EINE_DO.map((i) => parseInt(i, 2))));

  function strToBin(str) {
    let BUCHSTABEN = str.split("");
    for (l = 0; l < BUCHSTABEN.length; l++) {
      let NUMMER;

      switch (BUCHSTABEN[l]) {
        case "F":
        case "L":
          NUMMER = 0;
          break;
        case "B":
        case "R":
          NUMMER = 1;
          break;
      }

      BUCHSTABEN[l] = NUMMER;
    }
    return BUCHSTABEN.join("");
  }
};

findLargest(EINE_DO);
