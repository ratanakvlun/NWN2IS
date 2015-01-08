#include "nwn2is_inc"

void main()
{
	object oGUI;

	oGUI = GetControlledCharacter(OBJECT_SELF);

	if (oGUI != GetLocalObject(OBJECT_SELF, _IS_GUI_VAR_CHARACTER))
	{
		if (!_is_IsInitialized(oGUI))
			_is_InitializeState(oGUI, OBJECT_SELF);

		_is_LoadState(oGUI);
	}
}