int StartingConditional(object oData, int nIndex1, int nIndex2)
{
	int a, b;
	string s;
	object o1, o2;
	itemproperty ip;

	if (nIndex1 == nIndex2) return 0;

	o1 = GetVariableValueObject(oData, nIndex1);
	a = GetBaseItemType(o1);

	switch (a)
	{
	case BASE_ITEM_TRAPKIT:
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
	case BASE_ITEM_TRAPKIT:
		b = 0;
		break;
	default:
		b = 1;
		break;
	}

	if (a == 0 && a == b)
	{
		ip = GetFirstItemProperty(o1);
		while (GetIsItemPropertyValid(ip))
		{
			if (GetItemPropertyType(ip) == ITEM_PROPERTY_TRAP)
			{
				a = GetItemPropertySubType(ip);
				break;
			}

			ip = GetNextItemProperty(o1);
		}

		ip = GetFirstItemProperty(o2);
		while (GetIsItemPropertyValid(ip))
		{
			if (GetItemPropertyType(ip) == ITEM_PROPERTY_TRAP)
			{
				b = GetItemPropertySubType(ip);
				break;
			}

			ip = GetNextItemProperty(o2);
		}

		return (a-b);
	}

	return (a-b);
}