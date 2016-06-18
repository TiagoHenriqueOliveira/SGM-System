function mostraLogin(login) {
	var display = document.getElementById(login).style.display;
	if(display == "none") {
		document.getElementById(login).style.display = 'block';
	} else {
		document.getElementById(login).style.display = 'none';
	}
}