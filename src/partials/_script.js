// insert the current year into the copyright
const copyrightText = document.getElementById("copyrightText");
if (copyrightText) {
  copyrightText.insertAdjacentText(
    "afterbegin",
    `\u00A9 ${new Date().getFullYear()} `
  );
}

// insert the theme selector switch into the navbar
const navSw = document.getElementsByClassName("navigation__switch")[0];
if (navSw) {
  const sw = document.createElement("div");
  sw.classList.add("switch");
  sw.innerHTML = `
  <label class="switch__label" for="themeSwitch">
    Light
    <input class="switch__input" id="themeSwitch" type="checkbox" />
    <span class="switch__lever"></span>
    Dark
  </label>
`;

  navSw.appendChild(sw);

  const themeSw = document.getElementById("themeSwitch");
  themeSw.addEventListener("change", function () {
    const body = document.getElementsByTagName("body")[0];

    if (this.checked && body) {
      body.classList.toggle("dark", true);
      localStorage.setItem("THEME", "DARK");
    }
    if (!this.checked && body) {
      body.classList.toggle("dark", false);
      localStorage.setItem("THEME", "LIGHT");
    }
  });

  // grab theme from local storage
  const lastTheme = localStorage.getItem("THEME");
  if (lastTheme === "DARK") {
    themeSw.checked = true;
    themeSw.dispatchEvent(new Event("change"));
  }
}
