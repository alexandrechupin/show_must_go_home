const formValidation = () => {
  const steps = [...document.querySelectorAll('a.step')];

  const tabButtonsDivs = document.querySelectorAll('.tab-buttons');
  let buttons = [];
  tabButtonsDivs.forEach(div => buttons.push([...div.querySelectorAll('input')]));
  buttons = buttons.flat();

  buttons.forEach(button => button.addEventListener('click', (event) => {
    event.preventDefault();
    const activeStep = document.querySelector('a.active');
    const index = steps.findIndex(step => step === activeStep);
    const nextStep = steps[index + 1];
    const previousStep = steps[index - 1];
    const parentDiv = event.target.parentElement.parentElement;
    const formInputs = parentDiv.querySelectorAll('input');
    // console.log(formInputs);
    if (event.target.classList.contains('next-btn')) {
    // if (event.target.classList.contains('next-btn') && checkForm(formInputs)) {
      nextStep.click();
    // } else if (checkForm(formInputs)) {
    //   previousStep.click();
    } else if (event.target.classList.contains('prv-btn')) {
      // displayErrors();
      previousStep.click();
    }
  }));
}

const form = document.getElementById("new_string")
const button = document.querySelector(".submit_space")

button.addEventListener((e) =>{
  form.submit();
});



const checkForm = (formInputs) => {
  console.log(formInputs);
  [...formInputs].every(input => input.value);
}

const displayErrors = () => {
  console.log("Form isn't completed");
}

export default formValidation;
