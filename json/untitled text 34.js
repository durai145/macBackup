	lv_str  += "\n USSAppendAccordionDflt"+level+"=new us.USSAppendAccordionSection(USSAppendAccordionDflt0"+level+",USSTable ," +level +","+ level+'_'+recData+" ) ;"
				lv_str  += "\n USSAccordion"+level+"=new us.USSAppendAccordionSection(USSAccordion"+level+",USSAppendAccordionDflt"+level+" ) ;"
			
	HEADER
			
lv_str  += "\n USSAppendAccordionDflt"+level+"=new us.USSAccordionCreateDflt("+level+");";
lv_str  += "\n USSAppendAccordionDflt"+level+"=new us.USSAppendAccordionHeader(USSAccordionCreateDflt"+level+",'"+ parent[0].name  +"_rec_" + recData  +"'," +level +","+ level+'_'+recData+" );"
