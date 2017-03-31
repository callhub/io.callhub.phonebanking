CallHub Phonebanking Extension for CiviCRM
==========================================

['CallHub'](https://callhub.io) is a hosted phone banking service that enables your staff to talk with your contacts over the phone banking campaign and store notes about the call. This extension integrates CallHub with CiviCRM by posting call dispositions and notes as CiviCRM activities attached to the contact record and assigned to the relevant staff person's record.

Installation
============

1. Create a CallHub account ['here'](https://app.callhub.io/accounts/register/)
2. As part of your general CiviCRM installation, you should set a CiviCRM Extensions Directory at Administer >> System Settings >> Directories.
3. As part of your general CiviCRM installation, you should set an Extension Resource URL at Administer >> System Settings >> Resource URLs.
4. Create a contact in CiviCRM that will be used to synchronize information following the ['instructions'](http://civicrm.stackexchange.com/questions/9945/how-do-i-set-up-an-api-key-for-a-user/9946#9946)
5. Navigate to Administer >> System Settings >> Manage Extensions.
6. Beside CallHub Phone Banking, click Install.
7. On the ['integrations page'](https://app.callhub.io/dashboard/apps/) in your CallHub account, click on “Connect to your CiviCRM site”. There are 3 things you need to connect:

    a. Site URL. This should be the full path to extern/rest.php. For example, http://<YOUR_SITE_NAME>/civicrm/sites/all/modules/civicrm/extern/rest.php

    b. Site Key. The unique key that identifies your CiviCRM installation.

    c. API Key. The API key created in step 4 above.

8. After CiviCRM is connected, CallHub will import groups, events and campaigns from CiviCRM. 
9. Setup a ['phone banking campaign'](https://app.callhub.io/power_campaign/add/). You'll be able to choose the CiviCRM campaign and activity type that gets logged in CiviCRM.
10. The activities synced from CallHub have the following attributes:

    a. Notes: The notes include a link to audio recording, the actual notes taken by your staff and the Call Disposition.

    b. date and time: activities always happen at a certain point in time

    c. added by: the staff who added this activity

    d. with contact(s): the contacts in your database that are the subject of the activity.
