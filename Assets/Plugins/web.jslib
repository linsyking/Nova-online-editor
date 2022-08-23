mergeInto(LibraryManager.library, {

  GetSync: function (str) {
	var uc = UTF8ToString(str);

    var response = $.ajax({
        url: uc,
        async: false
    }).responseText;
	var bufferSize = lengthBytesUTF8(response) + 1;
    var buffer = _malloc(bufferSize);
    stringToUTF8(response, buffer, bufferSize);
    return buffer;
  },
  
  GetPath: function () {
	var dp = window.location.search.substring(1);
	var response = "";
	if (dp){
		response = dp;

	}else{
		response = "scripts.json";
	}
	
	var bufferSize = lengthBytesUTF8(response) + 1;
    var buffer = _malloc(bufferSize);
    stringToUTF8(response, buffer, bufferSize);
    return buffer;
  }

});
