const { writeFile } = require('fs');
const fakeData = require('./fakeData');

function writeToJSONFile(destJSONFile, obj) {
  writeFile(destJSONFile, JSON.stringify(obj, null, 2), err => {
    if (err) throw err;
    console.log(`Wrote fake data to '${destJSONFile}'`);
  });
}

// Generate fake data for the 'Alunos' table
function generateStudentsData(numStudents, destJSONFile) {
  fakeData
    .randomRGs(numStudents)
    .then(RGs => {
      const students = [];

      const names = fakeData.randomNames(numStudents);
      const birthDates = fakeData.randomDates(
        numStudents,
        '1900-01-01',
        '2008-01-01'
      );
      const enrollmentDates = fakeData.randomDates(
        numStudents,
        '2000-01-01',
        fakeData.today
      );
      const CPFs = fakeData.randomCPFs(numStudents);

      for (let i = 0; i < numStudents; i++) {
        students.push([
          names[i],
          RGs[i],
          birthDates[i],
          enrollmentDates[i],
          CPFs[i],
        ]);
      }

      writeToJSONFile(destJSONFile, students);
    })
    .catch(reason => {
      throw reason;
    });
}

// Generate fake data for the 'Cliente' table
function generateClientsData(numClients, destJSONFile) {
  fakeData
    .randomRGs(numClients)
    .then(RGs => {
      const clients = [];

      const names = fakeData.randomNames(numClients);
      const CPFs = fakeData.randomCPFs(numClients);
      const salaries = fakeData.randomSalaries(numClients);
      const fatherNames = fakeData.randomNames(numClients);
      const motherNames = fakeData.randomNames(numClients);
      const emails = fakeData.randomEmails(numClients);
      const passwds = fakeData.randomPasswords(numClients);

      for (let i = 0; i < numClients; i++) {
        clients.push([
          names[i],
          RGs[i],
          CPFs[i],
          salaries[i],
          motherNames[i],
          fatherNames[i],
          emails[i],
          passwds[i],
        ]);
      }

      writeToJSONFile(destJSONFile, clients);
    })
    .catch(reason => {
      throw reason;
    });
}

const numRows = 10; // number of rows to generate fake data for

generateStudentsData(numRows, 'alunos.json');
generateClientsData(numRows, 'clientes.json');
