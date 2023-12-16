sap.ui.define([
    "sap/ui/core/mvc/Controller"
],
    /**
     * @param {typeof sap.ui.core.mvc.Controller} Controller
     */
    function (Controller) {
        "use strict";

        return Controller.extend("ats.emp.employeebudget.controller.Main", {
            onInit: function () {

            },
            handleSelectionFinish: function(oEvent) {
                var selectedItems = oEvent.getParameter("selectedItems");
                var aSkills = [];
    
                for (var i = 0; i < selectedItems.length; i++) {
                    aSkills.push(selectedItems[i].getText());
                }

                this.getView().getModel("context").setProperty("/skills", aSkills);
            }
        });
    });
