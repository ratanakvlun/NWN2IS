int StartingConditional(object oData, int nIndex1, int nIndex2)
{
	int a, b;
	object o1, o2;

	if (nIndex1 == nIndex2) return 0;

	o1 = GetVariableValueObject(oData, nIndex1);
	a = GetWeight(o1);

	o2 = GetVariableValueObject(oData, nIndex2);
	b = GetWeight(o2);

	return (a-b);
}