#include "nwn2is_inc"

void main(string sValue)
{
	object oGUI;

	oGUI = GetControlledCharacter(OBJECT_SELF);

	if (sValue == _INV_IS_SCENE_STATE_CLOSED || sValue == "")
	{
		SetLocalGUIVariable(OBJECT_SELF, _INV_SCENE_NAME,
			_INV_GUI_ID_IS_SCENE_STATE, _INV_IS_SCENE_STATE_OPEN);

		if (!_is_IsInitialized(oGUI))
			_is_InitializeState(oGUI, OBJECT_SELF);

		DisplayGuiScreen(OBJECT_SELF, _IS_SCENE_NAME, FALSE, _IS_SCENE_FILE);
		_is_LoadState(oGUI);
	}
	else
	{
		SetLocalGUIVariable(OBJECT_SELF, _INV_SCENE_NAME,
			_INV_GUI_ID_IS_SCENE_STATE, _INV_IS_SCENE_STATE_CLOSED);

		CloseGUIScreen(OBJECT_SELF, _IS_SCENE_NAME);
	}
}