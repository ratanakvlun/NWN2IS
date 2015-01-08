#include "nwn2is_inc"

void main(int nID, string sValue)
{
	object oGUI;

	oGUI = GetLocalObject(OBJECT_SELF, _IS_GUI_VAR_CHARACTER);

	if (!GetIsObjectValid(oGUI) || !_is_IsInitialized(oGUI)) return;

	_is_UpdateGUI(nID, sValue, oGUI);
}