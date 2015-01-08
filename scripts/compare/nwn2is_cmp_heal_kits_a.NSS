int StartingConditional(object oData, int nIndex1, int nIndex2)
{
	int a, b;
	string s;
	object o1, o2;

	if (nIndex1 == nIndex2) return 0;

	o1 = GetVariableValueObject(oData, nIndex1);
	a = GetBaseItemType(o1);

	switch (a)
	{
	case BASE_ITEM_HEALERSKIT:
		a = 0;
		break;
	default:
		a = 1;
		break;
	}

	o2 = GetVariableValueObject(oData, nIndex2);
	b = GetBaseItemType(o2);

	switch (b)
	{
	case BASE_ITEM_HEALERSKIT:
		b = 0;
		break;
	default:
		b = 1;
		break;
	}

	return (a-b);
}