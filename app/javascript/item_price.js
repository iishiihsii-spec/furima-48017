function itemPrice (){
  const priceInput = document.getElementById("item-price");
  if (!priceInput) return;
  priceInput.addEventListener("input", () => {
    const inputValue = priceInput.value;
    const taxPrice = document.getElementById("add-tax-price")
    const profit = document.getElementById("profit")

    const tax = Math.floor(inputValue * 0.1)
    const profitValue = inputValue - tax

    taxPrice.innerHTML = tax;
    profit.innerHTML = profitValue;
  });
}
window.addEventListener("turbo:load", itemPrice);
window.addEventListener("turbo:render", itemPrice);