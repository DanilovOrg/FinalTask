&AtClient
Procedure TabProductsCostOnChange(Item)
	РассчитатьСумму();
EndProcedure

&AtClient
Procedure TabProductsCountOnChange(Item)
	РассчитатьСумму();
EndProcedure

&AtClient
Procedure РассчитатьСумму()
	СтрокаТЧ = Элементы.TabProducts.ТекущиеДанные;
	СтрокаТЧ.Sum = СтрокаТЧ.Cost * СтрокаТЧ.Count;
EndProcedure

&AtClient
Procedure BeforeWrite(Cancel, WriteParameters)
	Object.Total = Object.TabProducts.Итог("Sum");
EndProcedure
