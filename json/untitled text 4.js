 respStr= '<select      class="'+ req.body.class      + '" '
                +'        xml="'+ req.body.xml        + '" ' 
                +'       mndf="'+ req.body.mndf       + '" '
                +'   datatype="'+ req.body.datatype   + '" '
                +'   htmltype="'+ req.body.htmltype   + '" '
                +'         id="'+ req.body.id         + '" '
                +'   errorbox="'+ req.body.errorbox   + '" '
                +'      label="'+ req.body.label      + '" '
                +'      title="'+ req.body.title      + '" '
                +'   onchange="'+ req.body.onchange   + '" '
                +'    onclick="'+ req.body.onclick    + '" '
                +'    onblure="'+ req.body.onblure    + '" '
                +'  onkeydown="'+ req.body.onkeydown  + '" '
                +'    onkeyup="'+ req.body.onkeyup    + '" '
                +' onkeypress="'+ req.body.onkeypress + '" '
                +'       task="'+ req.body.task       + '" >'
                +' <option value=""    id="'+req.body.name+'"> </option>' 
                +' <option value=""    id="'+req.body.name+'"> '+ req.body.name+'</option>' 
                +' </select>';
