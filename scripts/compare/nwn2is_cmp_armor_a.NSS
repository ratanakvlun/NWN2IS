int StartingConditional(object oData, int nIndex1, int nIndex2)
{
	int a, b;
	string s;
	object o1, o2;

	if (nIndex1 == nIndex2) return 0;

	o1 = GetVariableValueObject(oData, nIndex1);
	a = GetBaseItemType(o1);
	if (a == BASE_ITEM_BELT ||
		a == BASE_ITEM_BOOTS ||
		a == BASE_ITEM_GLOVES)
	{
		a = 0;
	}
	else
	{
		s = Get2DAString("baseitems", "Category", a);
		a = StringToInt(s);

		switch (a)
		{
		case 3:
		case 4:
		case 5:
			a = 0;
			break;
		default:
			a = 1;
			break;
		}
	}

	o2 = GetVariableValueObject(oData, nIndex2);
	b = GetBaseItemType(o2);
	if (b == BASE_ITEM_BELT ||
		b == BASE_ITEM_BOOTS ||
		b == BASE_ITEM_GLOVES)
	{
		b = 0;
	}
	else
	{
		s = Get2DAString("baseitems", "Category", b);
		b = StringToInt(s);

		switch (b)
		{
		case 3:
		case 4:
		case 5:
			b = 0;
			break;
		default:
			b = 1;
			break;
		}
	}

	return (a-b);
}