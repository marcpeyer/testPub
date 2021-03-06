<!-- Copyright (c) Microsoft Corporation. All rights reserved. Licensed under the MIT license. -->
<!-- See LICENSE in the project root for license information -->

<!DOCTYPE html>
<html>
  <body>
    <form>
      <input type="radio" name="removetype" value="delete" onclick="onClick()">Delete this tab really?
      <br>
    </form>

    <script src="https://statics.teams.microsoft.com/sdk/v0.2/js/MicrosoftTeams.min.js"></script>

    <script type="text/javascript">
      microsoftTeams.initialize();
      microsoftTeams.settings.registerOnRemoveHandler(function(removeEvent) {
        var radios = document.getElementsByName('removetype');
        if (radios[0].checked) {
          // Delete the tab and all its data from the underlying service.
        }
        removeEvent.notifySuccess();
      });

      function onClick() {
        microsoftTeams.settings.setValidityState(true);
      }
    </script>
  </body>
</html>