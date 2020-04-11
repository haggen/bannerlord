// using System;

using TaleWorlds.Core;
using TaleWorlds.Localization;
using TaleWorlds.MountAndBlade;

namespace haggen.Ledger
{
    public class LedgeSubModule : MBSubModuleBase
    {
        protected override void OnSubModuleLoad()
        {
            InitialStateOption initStateOpt = new InitialStateOption(
                "Message",
                new TextObject("Message", null),
                9990,
                () =>
                {
                    InformationManager.DisplayMessage(new InformationMessage("Hello from Ledger!"));
                },
                false
            );

            Module.CurrentModule.AddInitialStateOption(initStateOpt);
        }
    }
}
