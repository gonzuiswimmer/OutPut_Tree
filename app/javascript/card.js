const pay = () => {
  Payjp.setPublicKey("pk_test_7b7b0750f15c820f0c72ac2a");
  const submit = document.getElementById("button")
  submit.addEventListener ("click", (e) => {
    e.preventDefault();

    const formResult = document.getElementById("charge-form");
    const formData = new FormData(formResult);

    const card = {
      number: formData.get("card_number"),
      exp_month: formData.get("exp_month"),
      exp_year: `20${formData.get("exp_year")}`,
      cvc: formData.get("cvc"),
    };

    Payjp.createToken(card, (status, response) => {
      if (status = 200){
        const token = response.id;
        const renderDom = document.getElementById("charge-form");
        const tokenObj = `<input type="hidden" name="token" value="${token}">`
        renderDom.insertAdjacentHTML("beforeend", tokenObj);
      }

      document.getElementById("card-number").removeAttribute("name");
      document.getElementById("card-exp-month").removeAttribute("name");
      document.getElementById("card-exp-year").removeAttribute("name");
      document.getElementById("card-cvc").removeAttribute("name");

      document.getElementById("charge-form").submit();
    })
  });
};


window.addEventListener ("load", pay);