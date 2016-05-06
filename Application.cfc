component {
    function onApplicationStart(){

    }


	function onRequestStart(){
		if(isDefined("URL.reload") && URL.reload){
			onApplicationStart();
		}
	}

}