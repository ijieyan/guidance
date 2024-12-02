document.querySelector('form').addEventListener('submit', function (e) {
    let inputs = document.querySelectorAll('input');
    for (let input of inputs) {
        if (input.value.trim() === "") {
            alert("All fields are required!");
            e.preventDefault();
            return;
        }
    }
});
