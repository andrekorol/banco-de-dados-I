const faker = require('faker/locale/pt_BR');
const { spawn } = require('child_process');
const moment = require('moment');
const cpf = require('node-cpf');

function fillArray(numElements, generateElementFunc) {
  const array = [];
  while (array.length < numElements) {
    array.push(generateElementFunc());
  }
  return array;
}

exports.randomNames = function(numNames) {
  return fillArray(numNames, faker.name.findName);
};

function generateRG() {
  return new Promise((resolve, reject) => {
    const pythonProcess = spawn('python', ['random-rgs.py']);
    pythonProcess.stdout.on('data', data => {
      const randomRG = data.toString().trim();
      resolve(randomRG);
    });
    pythonProcess.stderr.on('data', data => {
      reject(data);
    });
  });
}

exports.randomRGs = function(numRGs) {
  return new Promise((resolve, reject) => {
    const rgPromises = fillArray(numRGs, generateRG);

    Promise.all(rgPromises)
      .then(rgs => resolve(rgs))
      .catch(reason => {
        reject(reason);
      });
  });
};

exports.randomCPFs = function(numCPFs) {
  function maskedCPF() {
    return cpf.generate(true);
  }
  return fillArray(numCPFs, maskedCPF);
};

exports.today = moment(Date.now()).format('YYYY-MM-DD');

exports.randomDates = function(numDates, from, to) {
  function formattedRandomDate() {
    return moment(faker.date.between(from, to)).format('YYYY-MM-DD');
  }
  return fillArray(numDates, formattedRandomDate);
};

exports.randomSalaries = function(numSalaries) {
  function salary() {
    return parseFloat((faker.finance.amount() * 12.34).toFixed(2));
  }
  return fillArray(numSalaries, salary);
};

exports.randomEmails = function(numEmails) {
  function email() {
    return faker.internet.email();
  }
  return fillArray(numEmails, email);
};

exports.randomPasswords = function(numPasswds) {
  function passwd() {
    return faker.internet.password();
  }
  return fillArray(numPasswds, passwd);
};
