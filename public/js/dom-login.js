var div = document.getElementById('paragraph');
var btn = document.getElementById('btn');
var username = document.getElementById('username');
var password = document.getElementById('password');
var p = document.createElement('p');
btn.addEventListener('click',(event) =>{
  event.preventDefault();
  if ((username.value.trim() === "")||(password.value.trim() === "")) {
    p.textContent = 'Fill All inputs to login please!';
    div.appendChild(p);
  }
  else {
    username.value = username.value.trim();
    password.value = password.value.trim();
    console.log('username :',username.value,'password :',password.value);
    p.textContent = '';
  }
})