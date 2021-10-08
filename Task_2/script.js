var input = document.getElementById('email');

input.oninvalid = function(event) {
    event.target.setCustomValidity('Регистрация пользователя с таким почтовым адресом невозможна');
}