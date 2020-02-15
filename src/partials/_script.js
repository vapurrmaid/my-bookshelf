// insert the current year into the copyright
const copyrightText = document.getElementById("copyrightText");
copyrightText.insertAdjacentText(
  "afterbegin",
  `\u00A9 ${new Date().getFullYear()} `
);
