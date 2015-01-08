// Strips tags from the string 'sString'.
//
// Returns:
//   stripped string
string StripTags(string sString)
{
	int i, j, k, n;
	string s;

	s = "";
	i = 0;
	n = GetStringLength(sString);

	j = FindSubString(sString, "<", i);
	while (j > -1)
	{
		k = FindSubString(sString, ">", j+1);
		if (k < 0) break;
		if (i < j) s += GetSubString(sString, i, j-i);

		i = k+1;
		j = FindSubString(sString, "<", i);
	}

	if (i == 0) return sString;

	s += GetSubString(sString, i, n-i);

	return s;
}

// Gets the base item type name of 'oItem'.
//
// Returns:
//   the base item type name
string GetBaseItemTypeName(object oItem)
{
	int n;
	string s;

	n = GetBaseItemType(oItem);
	s = Get2DAString("baseitems", "Name", n);

	return GetStringByStrRef(StringToInt(s));
}