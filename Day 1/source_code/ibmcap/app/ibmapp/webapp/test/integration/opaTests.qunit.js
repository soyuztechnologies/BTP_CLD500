sap.ui.require(
    [
        'sap/fe/test/JourneyRunner',
        'com/ibm/ibmapp/test/integration/FirstJourney',
		'com/ibm/ibmapp/test/integration/pages/SubsSetList',
		'com/ibm/ibmapp/test/integration/pages/SubsSetObjectPage'
    ],
    function(JourneyRunner, opaJourney, SubsSetList, SubsSetObjectPage) {
        'use strict';
        var JourneyRunner = new JourneyRunner({
            // start index.html in web folder
            launchUrl: sap.ui.require.toUrl('com/ibm/ibmapp') + '/index.html'
        });

       
        JourneyRunner.run(
            {
                pages: { 
					onTheSubsSetList: SubsSetList,
					onTheSubsSetObjectPage: SubsSetObjectPage
                }
            },
            opaJourney.run
        );
    }
);