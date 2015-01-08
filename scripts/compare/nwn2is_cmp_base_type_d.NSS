#include "utility_inc"

int StartingConditional(object oData, int nIndex1, int nIndex2)
{
	string a, b;
	object o1, o2;

	if (nIndex1 == nIndex2) return 0;

	o1 = GetVariableValueObject(oData, nIndex1);
	a = GetBaseItemTypeName(o1);

	o2 = GetVariableValueObject(oData, nIndex2);
	b = GetBaseItemTypeName(o2);

	return -StringCompare(a, b, FALSE);
}