module iup.config;

import iup.iup: Ihandle, Icallback;

extern(C) {
    Ihandle* IupConfig();

    int IupConfigLoad(Ihandle* ih);
    int IupConfigSave(Ihandle* ih);

    /****************************************************************/

    void IupConfigSetVariableStr(Ihandle* ih, const(char) * group, const(char) * key, const(char) * value);
    void IupConfigSetVariableStrId(Ihandle* ih, const(char) * group, const(char) * key, int id, const(char) * value);
    void IupConfigSetVariableInt(Ihandle* ih, const(char) * group, const(char) * key, int value);
    void IupConfigSetVariableIntId(Ihandle* ih, const(char) * group, const(char) * key, int id, int value);
    void IupConfigSetVariableDouble(Ihandle* ih, const(char) * group, const(char) * key, double value);
    void IupConfigSetVariableDoubleId(Ihandle* ih, const(char) * group, const(char) * key, int id, double value);

    const(char) * IupConfigGetVariableStr(Ihandle* ih, const(char) * group, const(char) * key);
    const(char) * IupConfigGetVariableStrId(Ihandle* ih, const(char) * group, const(char) * key, int id);
    int    IupConfigGetVariableInt(Ihandle* ih, const(char) * group, const(char) * key);
    int    IupConfigGetVariableIntId(Ihandle* ih, const(char) * group, const(char) * key, int id);
    double IupConfigGetVariableDouble(Ihandle* ih, const(char) * group, const(char) * key);
    double IupConfigGetVariableDoubleId(Ihandle* ih, const(char) * group, const(char) * key, int id);

    const(char) * IupConfigGetVariableStrDef(Ihandle* ih, const(char) * group, const(char) * key, const(char) * def);
    const(char) * IupConfigGetVariableStrIdDef(Ihandle* ih, const(char) * group, const(char) * key, int id, const(char) * def);
    int    IupConfigGetVariableIntDef(Ihandle* ih, const(char) * group, const(char) * key, int def);
    int    IupConfigGetVariableIntIdDef(Ihandle* ih, const(char) * group, const(char) * key, int id, int def);
    double IupConfigGetVariableDoubleDef(Ihandle* ih, const(char) * group, const(char) * key, double def);
    double IupConfigGetVariableDoubleIdDef(Ihandle* ih, const(char) * group, const(char) * key, int id, double def);

    /****************************************************************/

    void IupConfigRecentInit(Ihandle* ih, Ihandle* menu, Icallback recent_cb, int max_recent);
    void IupConfigRecentUpdate(Ihandle* ih, const(char) * filename);

    void IupConfigDialogShow(Ihandle* ih, Ihandle* dialog, const(char) * name);
    void IupConfigDialogClosed(Ihandle* ih, Ihandle* dialog, const(char) * name);
}
