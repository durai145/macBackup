
requirejs.config({
    "baseUrl": "js/lib",
    "paths": {
      "app": "../app"
    },
    "shim": {
        "ufi.core": ["require"],
        "backbone": ["underscore"],
        "ufi.core": ["backbone"],
        "ufi.frameGen": ["ufi.core"],
        "ufi.xml": ["ufi.core"],
        "ufi.validate": ["ufi.core"]
        

        
    }
});



requirejs(["jquery","underscore","backbone","ufi.core", "ufi.frameGen","ufi.xml","ufi.validate",], function($, _, backbone,uficore,ufiframegen,ufixml,ufivalidate) {

       
      try
      { 



        var CurrNoteJson=note.toJSON();
     
      var resourceJson= note.get("resourceJson")  ;
    var recSch=CurrNoteJson.schemaJson;

    var rec=CurrNoteJson.dfltJson;
    
 

    var listValJson =CurrNoteJson.listValJson;
    var us= new ufiframegen.FG();
    var func=CurrNoteJson.func;

var commonHeader="requirejs.config({         "
+ "    \"baseUrl\": \"js/lib\","
+ "    \"paths\": {"
+ "      \"app\": \"../app\""
+ "    },"
+ "    \"shim\": {"
+ "        \"ufi.core\": [\"require\"],"
+ "        \"backbone\": [\"underscore\"],"
+ "        \"ufi.core\": [\"backbone\"],"
+ "        \"ufi.frameGen\": [\"ufi.core\"],"
+ "        \"ufi.xml\": [\"ufi.core\"],"
+ "        \"ufi.validate\": [\"ufi.core\"]"
+ "        "
+ ""
+ "        "
+ "    }"
+ "});";
   commonHeader+="requirejs([\"jquery\",\"ufi.core\", \"ufi.frameGen\",\"ufi.xml\",\"ufi.validate\"], function($,uficore,ufiframegen,ufixml,ufivalidate) { var us = new ufiframegen.FG(); var USSContainer0 =    us.USSCreateContainer(); var USSHeader    = ''";
        

        
     var vcommonFrameGen =us.frameGeneration(eval("listValJson[0]."+ recSch[0].name) 
                                              ,eval("resourceJson[0]."+ recSch[0].name)
                                              ,eval("rec[0]."+recSch[0].name) 
                                              ,recSch[0].childs
                                              ,recSch[0]
                                              ,0
                                              ,func
                                              ,0
                                          );
        
        
var commonTailer=" document.getElementById('FrameId').appendChild(USSContainer0);  \n } );"
//commonTailer+="\n document.getElementById('FrameId').appendChild(USSContainer0); });";

//var vcommonFrameGen="require([\"jquery\",\"ufi.core\", \"ufi.frameGen\",\"ufi.xml\",\"ufi.validate\"], function($,uficore,ufiframegen,ufixml,ufivalidate) { $(function() { alert('test');})} );"

var script=document.createElement("script");
//scr.appendChild(commonHeader + vcommonFrameGen + commonTailer);
script.type='text/javascript';

script.text=commonHeader + vcommonFrameGen + commonTailer;
document.getElementById('FrameId').appendChild(script);
//this.$el.find("tbody").append(script);
}
catch (e)
{
  alert("index" +e);
}

});
   