#include "mergesort_inc"

void main(object oParam, int nLeft, int nMid, int nRight)
{
	int i, j, k, koffset, n;
	string s, kprefix;
	object o, data;

	data = ms_param_GetData(oParam);
	kprefix = "_ms_tmp_";

	i = nLeft;
	j = nMid;

	koffset = GetLocalInt(OBJECT_SELF, _MS_HELPER_VAR_DATA_OFFSET);
	k = 0;

	while (i < nMid && j <= nRight)
	{
		if (ms_ExecuteCompare(oParam, i, j) <= 0)
		{
			o = GetVariableValueObject(data, i);
			i++;
		}
		else
		{
			o = GetVariableValueObject(data, j);
			j++;
		}

		SetLocalObject(OBJECT_SELF, kprefix + IntToString(k), o);
		k++;
	}

	j = nRight;
	for (n = nMid-1; n >= i; n--)
	{
		s = GetVariableName(data, j);
		SetLocalObject(data, s, GetVariableValueObject(data, n));
		j--;
	}

	for (n = 0; n < k; n++)
	{
		s = GetVariableName(data, n+nLeft);
		SetLocalObject(data, s, GetVariableValueObject(OBJECT_SELF, n+koffset));
	}
}