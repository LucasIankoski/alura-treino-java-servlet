function abrePopUp(){
	const popup = document.querySelector('.popup-wrapper')
		
	popup.style.display = 'block'
}

function fecharPopUp(){
	const fechar = document.querySelector('.popup-wrapper')
	
	fechar.style.display = 'none'
}


/*cnpj.addEventListener("keyup", () => {	
	
	let value = cnpj.value.replace(/^(\d{2})(\d{3})(\d{3})(\d{4})(\d{2})/, "$1.$2.$3/$4-$5")	
	
	cnpj.value = value;
});*/

function cnpjMask(){
	let cnpj = document.getElementById('cnpjMask')
	cnpj.value = cnpj.value.replace(/^(\d{2})(\d{3})(\d{3})(\d{4})(\d{2})/, "$1.$2.$3/$4-$5");
	alert("oi");
}

	
	
