function netone_show_menu (id,obj){
		document.getElementById(id).style.display='block';
		if(obj.className == 'per_button'){
			obj.className = 'per_button_hover';
		}
		
}

function netone_hide_menu (id,obj){
		document.getElementById(id).style.display='none';
		if(obj.className == 'per_button_hover'){
			obj.className = 'per_button';
		}
		
}