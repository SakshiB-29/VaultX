function openAccount() {
  const name = document.getElementById("name").value;
  const deposit = document.getElementById("deposit").value;
  alert(`Account opened for ${name} with ₹${deposit} deposit.`);
}

function checkBalance() {
  const acc = document.getElementById("balanceAcc").value;
  // Demo only
  document.getElementById("balanceResult").innerText = `Balance for ${acc}: ₹4,000 (demo)`;
}

function listCustomers() {
  const customers = ["Sakshi B", "Rahul K", "Anita J", "Vikas D"];
  const list = document.getElementById("customerList");
  list.innerHTML = "";
  customers.forEach((c) => {
    const li = document.createElement("li");
    li.innerText = c;
    list.appendChild(li);
  });
}
