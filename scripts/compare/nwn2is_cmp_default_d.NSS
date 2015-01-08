int StartingConditional(object oData, int nIndex1, int nIndex2)
{
	int a, b;
	string s;
	object o1, o2;

	if (nIndex1 == nIndex2) return 0;

	o1 = GetVariableValueObject(oData, nIndex1);
	a = GetBaseItemType(o1);
	s = Get2DAString("baseitems", "BaseItemSortOrder", a);
	a = StringToInt(s);

	o2 = GetVariableValueObject(oData, nIndex2);
	b = GetBaseItemType(o2);
	s = Get2DAString("baseitems", "BaseItemSortOrder", b);
	b = StringToInt(s);

	return -(a-b);
}