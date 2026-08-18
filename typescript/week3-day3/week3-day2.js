import * as fs from "fs";
fs.writeFileSync("notes.txt", "Nick reporting for duty.\n");
const contents = fs.readFileSync("notes.txt", "utf-8");
console.log(contents);
fs.appendFileSync("notes.txt", "Second line added.\n");
const updatedContents = fs.readFileSync("notes.txt", "utf-8");
console.log(updatedContents);
const pilot1 = { name: "Nick", stamina: 100, funds: 125 };
fs.writeFileSync("pilot.json", JSON.stringify(pilot1, null, 4));
const raw = fs.readFileSync("pilot.json", "utf-8");
const loadedPilot = JSON.parse(raw);
console.log(loadedPilot.name, loadedPilot.stamina, loadedPilot.funds);
//# sourceMappingURL=week3-day2.js.map