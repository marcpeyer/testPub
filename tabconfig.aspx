<!-- Copyright (c) Microsoft Corporation. All rights reserved. Licensed under the MIT license. -->
<!-- See LICENSE in the project root for license information -->

<!DOCTYPE html>
<html>
  <body>
    <form>
      URL: <input type="text" id="anyUrl" name="anyUrl" value="http://" onchange="onChange()" />
      Tab Name: <input type="text" id="tabName" name="tabName" value="Any URL" onchange="onChange()" />
    </form>

    <script src="https://statics.teams.microsoft.com/sdk/v0.2/js/MicrosoftTeams.min.js"></script>

    <script type="text/javascript">
      microsoftTeams.initialize();
      microsoftTeams.settings.registerOnSaveHandler(function(saveEvent) {
        var anyUrl = document.getElementById('anyUrl');
        var tabName = document.getElementById('tabName');
        if (anyUrl.value) {
          microsoftTeams.settings.setSettings({
            contentUrl: anyUrl.value,
            suggestedTabName: tabName.value,
            websiteUrl: anyUrl.value,
            removeUrl: window.location.origin + "/tabremove.aspx"
          });
        }
        saveEvent.notifySuccess();
      });

      function onChange() {
        microsoftTeams.settings.setValidityState(true);
      }
    </script>
  </body>
</html>