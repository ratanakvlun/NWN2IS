int StartingConditional(object oData, int nIndex1, int nIndex2)
{
	int a, b;
	string s;
	object o1, o2;

	if (nIndex1 == nIndex2) return 0;

	o1 = GetVariableValueObject(oData, nIndex1);
	a = GetBaseItemType(o1);
	s = Get2DAString("baseitems", "Category", a);
	a = StringToInt(s);

	switch (a)
	{
	case 9:
		a = 0;
		break;
	default:
		a = 1;
		break;
	}

	o2 = GetVariableValueObject(oData, nIndex2);
	b = GetBaseItemType(o2);
	s = Get2DAString("baseitems", "Category", b);
	b = StringToInt(s);

	switch (b)
	{
	case 9:
		b = 0;
		break;
	default:
		b = 1;
		break;
	}

	return -(a-b);
}