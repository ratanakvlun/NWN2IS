const string _IS_ORDER_2DA_FILE = "nwn2is_custom_order";
const string _IS_ORDER_FIELD = "Sort_Order";

int StartingConditional(object oData, int nIndex1, int nIndex2)
{
	int a, b;
	string s;
	object o1, o2;

	if (nIndex1 == nIndex2) return 0;

	o1 = GetVariableValueObject(oData, nIndex1);
	a = GetBaseItemType(o1);
	s = Get2DAString(_IS_ORDER_2DA_FILE, _IS_ORDER_FIELD, a);
	a = StringToInt(s);

	o2 = GetVariableValueObject(oData, nIndex2);
	b = GetBaseItemType(o2);
	s = Get2DAString(_IS_ORDER_2DA_FILE, _IS_ORDER_FIELD, b);
	b = StringToInt(s);

	return -(a-b);
}