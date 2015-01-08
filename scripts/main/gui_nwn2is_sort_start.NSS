#include "nwn2is_inc"

void main(string sValue)
{
	object oGUI;

	oGUI = GetControlledCharacter(OBJECT_SELF);

	if (sValue == _INV_IS_SORT_STATE_IDLE || sValue == "")
	{
		SetLocalGUIVariable(OBJECT_SELF, _INV_SCENE_NAME,
			_INV_GUI_ID_IS_SORT_STATE, _INV_IS_SORT_STATE_RUNNING);

		if (!_is_IsInitialized(oGUI))
			_is_InitializeState(oGUI, OBJECT_SELF);

		_is_StartSort(oGUI, oGUI);
	}
}