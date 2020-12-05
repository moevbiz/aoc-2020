const fs = require("fs");

let EINE_DO = fs.readFileSync(__dirname + "/input.txt", "utf8");
EINE_DO = EINE_DO.split("\n");

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

const findLargest = (EINE_DO) => {
  let ERGEBNIS = [];

  for (i = 0; i < EINE_DO.length; i++) {
    ERGEBNIS[i] = strToBin(EINE_DO[i]);
  }

  return Math.max(...ERGEBNIS.map((i) => parseInt(i, 2)));
};

const MEIN_SITZ = (EINE_DO) => {
  let ERGEBNIS;
  let GSCHEIT_EINE_DO = [];

  for (i = 1; i < EINE_DO.length; i++) {
    GSCHEIT_EINE_DO[i] = parseInt(strToBin(EINE_DO[i]), 2);
  }

  GSCHEIT_EINE_DO.sort((a, b) => {
    return a - b;
  });

  for (i = 1; i < GSCHEIT_EINE_DO.length - 1; i++) {
    if (GSCHEIT_EINE_DO[i] == GSCHEIT_EINE_DO[i - 1] + 2) {
      ERGEBNIS = GSCHEIT_EINE_DO[i] - 1;
    }
  }

  return ERGEBNIS;
};

console.log(findLargest(EINE_DO));
console.log(MEIN_SITZ(EINE_DO));
