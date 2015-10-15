	if ((parent[0].childs[0].dataType  == 'XMLCONTAINER' )|| (parent[0].childs[0].dataType  == 'SCHEMA' ))
						{
							lv_str  += "\n USSAccordion"+level+"=new us.USSAppendAccordionSection(USSAccordion"+level+",USSAccordion"+(level+1)+" ) ;"
						}
						else
						{
							lv_str  += "\n USSAccordion"+level+"=new us.USSAppendAccordionSection(USSAccordion"+level+",USSTable ) ;"
					
						}