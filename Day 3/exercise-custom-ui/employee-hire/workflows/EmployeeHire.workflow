{
	"contents": {
		"6b9df904-0873-4b16-8fb5-0b9745a8878b": {
			"classDefinition": "com.sap.bpm.wfs.Model",
			"id": "ats.emp.employeehire",
			"subject": "EmployeeHire",
			"name": "EmployeeHire",
			"documentation": "Workflow for Employee hiring",
			"lastIds": "62d7f4ed-4063-4c44-af8b-39050bd44926",
			"events": {
				"11a9b5ee-17c0-4159-9bbf-454dcfdcd5c3": {
					"name": "StartEvent1"
				},
				"2798f4e7-bc42-4fad-a248-159095a2f40a": {
					"name": "EndEvent1"
				},
				"6b788267-82fa-41ec-85dc-0a97a0b1585f": {
					"name": "EndEvent2"
				}
			},
			"activities": {
				"d6497980-8f9f-44bd-b83d-6e25b5f4338e": {
					"name": "EmployeeTaskUI"
				},
				"0508785a-80d6-499e-9391-ded54955ac2b": {
					"name": "CheckSubmission"
				},
				"50007764-2bed-4aae-a38d-ecef50831727": {
					"name": "RequestApproval"
				},
				"08d7ec91-0291-4f9c-81fb-260058ff2a9b": {
					"name": "ExclusiveGateway2"
				},
				"32bab0c0-368f-488d-ae01-c85bdfa0dcb2": {
					"name": "Approval"
				},
				"2d54c825-ade2-4628-9531-4ae1e937309f": {
					"name": "Rejection"
				},
				"65fc990b-b448-4501-812b-1a752e2b6c33": {
					"name": "ApprovalChange"
				}
			},
			"sequenceFlows": {
				"c6b99f32-5fe6-4ab6-b60a-80fba1b9ae0f": {
					"name": "SequenceFlow1"
				},
				"41f25697-8084-4c3d-800f-0c584a384147": {
					"name": "SequenceFlow2"
				},
				"a470a1fa-f17a-4913-9b61-7ec5d7caea6d": {
					"name": "SequenceFlow3"
				},
				"d72979f6-b594-4fb5-81f9-a1c95b962d4d": {
					"name": "SequenceFlow4"
				},
				"35423c4c-d391-495c-a510-f8deb74e1289": {
					"name": "SequenceFlow5"
				},
				"fc53025c-55a4-4bfa-bd0a-d5e51670b3a8": {
					"name": "SequenceFlow6"
				},
				"102590de-5e88-41b0-858a-2b76a8cc876f": {
					"name": "SequenceFlow7"
				},
				"0ff9262c-b965-4571-acd7-cfdfde0e25cf": {
					"name": "SequenceFlow9"
				},
				"cd52bef9-0c6c-4e9c-9b5a-f4aecca398da": {
					"name": "SequenceFlow10"
				},
				"406ba6c4-6860-4da0-8614-7bb8dd07893a": {
					"name": "SequenceFlow11"
				}
			},
			"diagrams": {
				"42fa7a2d-c526-4a02-b3ba-49b5168ba644": {}
			}
		},
		"11a9b5ee-17c0-4159-9bbf-454dcfdcd5c3": {
			"classDefinition": "com.sap.bpm.wfs.StartEvent",
			"id": "startevent1",
			"name": "StartEvent1",
			"sampleContextRefs": {
				"2b612fea-98c2-44e4-ab8f-f68f0054d4c2": {}
			}
		},
		"2798f4e7-bc42-4fad-a248-159095a2f40a": {
			"classDefinition": "com.sap.bpm.wfs.EndEvent",
			"id": "endevent1",
			"name": "EndEvent1"
		},
		"6b788267-82fa-41ec-85dc-0a97a0b1585f": {
			"classDefinition": "com.sap.bpm.wfs.EndEvent",
			"id": "endevent2",
			"name": "EndEvent2"
		},
		"d6497980-8f9f-44bd-b83d-6e25b5f4338e": {
			"classDefinition": "com.sap.bpm.wfs.UserTask",
			"subject": "Provide the resource budget information",
			"description": "Provide the resource budget information",
			"priority": "MEDIUM",
			"isHiddenInLogForParticipant": false,
			"supportsForward": true,
			"userInterface": "sapui5://emprouting.atsempemployeebudget/ats.emp.employeebudget",
			"recipientUsers": "${info.startedBy}",
			"id": "usertask1",
			"name": "EmployeeTaskUI",
			"documentation": "Custom UI5 app for employee form data"
		},
		"0508785a-80d6-499e-9391-ded54955ac2b": {
			"classDefinition": "com.sap.bpm.wfs.ExclusiveGateway",
			"id": "exclusivegateway1",
			"name": "CheckSubmission",
			"default": "35423c4c-d391-495c-a510-f8deb74e1289"
		},
		"50007764-2bed-4aae-a38d-ecef50831727": {
			"classDefinition": "com.sap.bpm.wfs.UserTask",
			"subject": "Request for Approval of candidate ${context.name}",
			"description": "Hello,\n\nA new Request for Approval of candidate ${context.name}",
			"priority": "MEDIUM",
			"isHiddenInLogForParticipant": false,
			"supportsForward": false,
			"userInterface": "sapui5://comsapbpmworkflow.comsapbpmwusformplayer/com.sap.bpm.wus.form.player",
			"recipientUsers": "${info.startedBy}",
			"formReference": "/forms/EmployeeHire/employeeDetails.form",
			"userInterfaceParams": [{
				"key": "formId",
				"value": "employeedetails"
			}, {
				"key": "formRevision",
				"value": "1.0"
			}],
			"id": "usertask2",
			"name": "RequestApproval"
		},
		"08d7ec91-0291-4f9c-81fb-260058ff2a9b": {
			"classDefinition": "com.sap.bpm.wfs.ExclusiveGateway",
			"id": "exclusivegateway2",
			"name": "ExclusiveGateway2",
			"default": "fc53025c-55a4-4bfa-bd0a-d5e51670b3a8"
		},
		"32bab0c0-368f-488d-ae01-c85bdfa0dcb2": {
			"classDefinition": "com.sap.bpm.wfs.MailTask",
			"destinationSource": "consumer",
			"id": "mailtask1",
			"name": "Approval",
			"mailDefinitionRef": "cb820822-7552-4ceb-98c6-3bbe5fd4f154"
		},
		"2d54c825-ade2-4628-9531-4ae1e937309f": {
			"classDefinition": "com.sap.bpm.wfs.MailTask",
			"destinationSource": "consumer",
			"id": "mailtask2",
			"name": "Rejection",
			"mailDefinitionRef": "7d2e87a5-e37d-4ad1-b358-343e8173bb0b"
		},
		"65fc990b-b448-4501-812b-1a752e2b6c33": {
			"classDefinition": "com.sap.bpm.wfs.ScriptTask",
			"reference": "/scripts/EmployeeHire/changeApprovalStatus.js",
			"id": "scripttask1",
			"name": "ApprovalChange"
		},
		"c6b99f32-5fe6-4ab6-b60a-80fba1b9ae0f": {
			"classDefinition": "com.sap.bpm.wfs.SequenceFlow",
			"id": "sequenceflow1",
			"name": "SequenceFlow1",
			"sourceRef": "11a9b5ee-17c0-4159-9bbf-454dcfdcd5c3",
			"targetRef": "d6497980-8f9f-44bd-b83d-6e25b5f4338e"
		},
		"41f25697-8084-4c3d-800f-0c584a384147": {
			"classDefinition": "com.sap.bpm.wfs.SequenceFlow",
			"id": "sequenceflow2",
			"name": "SequenceFlow2",
			"sourceRef": "d6497980-8f9f-44bd-b83d-6e25b5f4338e",
			"targetRef": "0508785a-80d6-499e-9391-ded54955ac2b"
		},
		"a470a1fa-f17a-4913-9b61-7ec5d7caea6d": {
			"classDefinition": "com.sap.bpm.wfs.SequenceFlow",
			"condition": "${context.submit == true}",
			"id": "sequenceflow3",
			"name": "SequenceFlow3",
			"sourceRef": "0508785a-80d6-499e-9391-ded54955ac2b",
			"targetRef": "50007764-2bed-4aae-a38d-ecef50831727"
		},
		"d72979f6-b594-4fb5-81f9-a1c95b962d4d": {
			"classDefinition": "com.sap.bpm.wfs.SequenceFlow",
			"id": "sequenceflow4",
			"name": "SequenceFlow4",
			"sourceRef": "50007764-2bed-4aae-a38d-ecef50831727",
			"targetRef": "65fc990b-b448-4501-812b-1a752e2b6c33"
		},
		"35423c4c-d391-495c-a510-f8deb74e1289": {
			"classDefinition": "com.sap.bpm.wfs.SequenceFlow",
			"id": "sequenceflow5",
			"name": "SequenceFlow5",
			"sourceRef": "0508785a-80d6-499e-9391-ded54955ac2b",
			"targetRef": "6b788267-82fa-41ec-85dc-0a97a0b1585f"
		},
		"fc53025c-55a4-4bfa-bd0a-d5e51670b3a8": {
			"classDefinition": "com.sap.bpm.wfs.SequenceFlow",
			"id": "sequenceflow6",
			"name": "SequenceFlow6",
			"sourceRef": "08d7ec91-0291-4f9c-81fb-260058ff2a9b",
			"targetRef": "2d54c825-ade2-4628-9531-4ae1e937309f"
		},
		"102590de-5e88-41b0-858a-2b76a8cc876f": {
			"classDefinition": "com.sap.bpm.wfs.SequenceFlow",
			"id": "sequenceflow7",
			"name": "SequenceFlow7",
			"sourceRef": "32bab0c0-368f-488d-ae01-c85bdfa0dcb2",
			"targetRef": "2798f4e7-bc42-4fad-a248-159095a2f40a"
		},
		"0ff9262c-b965-4571-acd7-cfdfde0e25cf": {
			"classDefinition": "com.sap.bpm.wfs.SequenceFlow",
			"condition": "${context.approved == true}",
			"id": "sequenceflow9",
			"name": "SequenceFlow9",
			"sourceRef": "08d7ec91-0291-4f9c-81fb-260058ff2a9b",
			"targetRef": "32bab0c0-368f-488d-ae01-c85bdfa0dcb2"
		},
		"cd52bef9-0c6c-4e9c-9b5a-f4aecca398da": {
			"classDefinition": "com.sap.bpm.wfs.SequenceFlow",
			"id": "sequenceflow10",
			"name": "SequenceFlow10",
			"sourceRef": "2d54c825-ade2-4628-9531-4ae1e937309f",
			"targetRef": "2798f4e7-bc42-4fad-a248-159095a2f40a"
		},
		"406ba6c4-6860-4da0-8614-7bb8dd07893a": {
			"classDefinition": "com.sap.bpm.wfs.SequenceFlow",
			"id": "sequenceflow11",
			"name": "SequenceFlow11",
			"sourceRef": "65fc990b-b448-4501-812b-1a752e2b6c33",
			"targetRef": "08d7ec91-0291-4f9c-81fb-260058ff2a9b"
		},
		"42fa7a2d-c526-4a02-b3ba-49b5168ba644": {
			"classDefinition": "com.sap.bpm.wfs.ui.Diagram",
			"symbols": {
				"df898b52-91e1-4778-baad-2ad9a261d30e": {},
				"53e54950-7757-4161-82c9-afa7e86cff2c": {},
				"6bb141da-d485-4317-93b8-e17711df4c32": {},
				"5e8eed16-6680-4345-9ea9-62b1c92305e9": {},
				"57b70894-8121-48b0-aca1-0a656c5c39fd": {},
				"3a5214ab-de31-442c-a8e7-cc36ffdd2da4": {},
				"319ae145-3a76-485e-9ec0-d4450c4702e4": {},
				"1c63009b-3bd2-4553-83f6-60eb2712c354": {},
				"1e744637-007c-478b-b9cc-c30f90b8c238": {},
				"f7440609-37f4-4dfc-8f79-dd61449d84e9": {},
				"007781de-73bc-4218-9ca2-892d6d61d75c": {},
				"eacc14de-6aa0-4adb-b8b6-f911d4302e13": {},
				"bb4abedf-c20c-4933-a174-af2a40fdba4e": {},
				"8caaa24d-5564-4523-859f-fe31a8913929": {},
				"b3e9f50d-7b5f-4c13-bae6-486b76c47a08": {},
				"9f12f60e-413a-43c3-a4f4-5d7b3b596921": {},
				"19d77ac0-c18b-4c4f-8cec-1eac461f00ac": {},
				"5f07ad05-1fce-44de-a33d-ddd7771b2d43": {},
				"930d320f-5fbc-46ed-9f3a-469a35c8476b": {},
				"39fd9d8f-bf1c-466b-b01b-8ee2a2e20f5b": {}
			}
		},
		"2b612fea-98c2-44e4-ab8f-f68f0054d4c2": {
			"classDefinition": "com.sap.bpm.wfs.SampleContext",
			"reference": "/sample-data/EmployeeHire/employeeData.json",
			"id": "default-start-context"
		},
		"df898b52-91e1-4778-baad-2ad9a261d30e": {
			"classDefinition": "com.sap.bpm.wfs.ui.StartEventSymbol",
			"x": 121,
			"y": 12,
			"width": 32,
			"height": 32,
			"object": "11a9b5ee-17c0-4159-9bbf-454dcfdcd5c3"
		},
		"53e54950-7757-4161-82c9-afa7e86cff2c": {
			"classDefinition": "com.sap.bpm.wfs.ui.EndEventSymbol",
			"x": 119.5,
			"y": 797.9999952316284,
			"width": 35,
			"height": 35,
			"object": "2798f4e7-bc42-4fad-a248-159095a2f40a"
		},
		"6bb141da-d485-4317-93b8-e17711df4c32": {
			"classDefinition": "com.sap.bpm.wfs.ui.SequenceFlowSymbol",
			"points": "137,44 137,94",
			"sourceSymbol": "df898b52-91e1-4778-baad-2ad9a261d30e",
			"targetSymbol": "5e8eed16-6680-4345-9ea9-62b1c92305e9",
			"object": "c6b99f32-5fe6-4ab6-b60a-80fba1b9ae0f"
		},
		"5e8eed16-6680-4345-9ea9-62b1c92305e9": {
			"classDefinition": "com.sap.bpm.wfs.ui.UserTaskSymbol",
			"x": 87,
			"y": 94,
			"width": 100,
			"height": 60,
			"object": "d6497980-8f9f-44bd-b83d-6e25b5f4338e"
		},
		"57b70894-8121-48b0-aca1-0a656c5c39fd": {
			"classDefinition": "com.sap.bpm.wfs.ui.SequenceFlowSymbol",
			"points": "137,154 137,204",
			"sourceSymbol": "5e8eed16-6680-4345-9ea9-62b1c92305e9",
			"targetSymbol": "3a5214ab-de31-442c-a8e7-cc36ffdd2da4",
			"object": "41f25697-8084-4c3d-800f-0c584a384147"
		},
		"3a5214ab-de31-442c-a8e7-cc36ffdd2da4": {
			"classDefinition": "com.sap.bpm.wfs.ui.ExclusiveGatewaySymbol",
			"x": 116,
			"y": 204,
			"object": "0508785a-80d6-499e-9391-ded54955ac2b"
		},
		"319ae145-3a76-485e-9ec0-d4450c4702e4": {
			"classDefinition": "com.sap.bpm.wfs.ui.SequenceFlowSymbol",
			"points": "137,246 137,280.99999940395355 94.5,280.99999940395355 94.5,315.9999988079071",
			"sourceSymbol": "3a5214ab-de31-442c-a8e7-cc36ffdd2da4",
			"targetSymbol": "1c63009b-3bd2-4553-83f6-60eb2712c354",
			"object": "a470a1fa-f17a-4913-9b61-7ec5d7caea6d"
		},
		"1c63009b-3bd2-4553-83f6-60eb2712c354": {
			"classDefinition": "com.sap.bpm.wfs.ui.UserTaskSymbol",
			"x": 44.5,
			"y": 315.9999988079071,
			"width": 100,
			"height": 60,
			"object": "50007764-2bed-4aae-a38d-ecef50831727"
		},
		"1e744637-007c-478b-b9cc-c30f90b8c238": {
			"classDefinition": "com.sap.bpm.wfs.ui.SequenceFlowSymbol",
			"points": "94.5,375.9999988079071 94.5,410.99999821186066 137,410.99999821186066 137,445.9999976158142",
			"sourceSymbol": "1c63009b-3bd2-4553-83f6-60eb2712c354",
			"targetSymbol": "930d320f-5fbc-46ed-9f3a-469a35c8476b",
			"object": "d72979f6-b594-4fb5-81f9-a1c95b962d4d"
		},
		"f7440609-37f4-4dfc-8f79-dd61449d84e9": {
			"classDefinition": "com.sap.bpm.wfs.ui.EndEventSymbol",
			"x": 194.5,
			"y": 315.9999988079071,
			"width": 35,
			"height": 35,
			"object": "6b788267-82fa-41ec-85dc-0a97a0b1585f"
		},
		"007781de-73bc-4218-9ca2-892d6d61d75c": {
			"classDefinition": "com.sap.bpm.wfs.ui.SequenceFlowSymbol",
			"points": "137,246 137,280.99999940395355 212,280.99999940395355 212,315.9999988079071",
			"sourceSymbol": "3a5214ab-de31-442c-a8e7-cc36ffdd2da4",
			"targetSymbol": "f7440609-37f4-4dfc-8f79-dd61449d84e9",
			"object": "35423c4c-d391-495c-a510-f8deb74e1289"
		},
		"eacc14de-6aa0-4adb-b8b6-f911d4302e13": {
			"classDefinition": "com.sap.bpm.wfs.ui.ExclusiveGatewaySymbol",
			"x": 116,
			"y": 555.9999976158142,
			"object": "08d7ec91-0291-4f9c-81fb-260058ff2a9b"
		},
		"bb4abedf-c20c-4933-a174-af2a40fdba4e": {
			"classDefinition": "com.sap.bpm.wfs.ui.SequenceFlowSymbol",
			"points": "137,597.9999976158142 137,632.9999970197678 62,632.9999970197678 62,667.9999964237213",
			"sourceSymbol": "eacc14de-6aa0-4adb-b8b6-f911d4302e13",
			"targetSymbol": "9f12f60e-413a-43c3-a4f4-5d7b3b596921",
			"object": "fc53025c-55a4-4bfa-bd0a-d5e51670b3a8"
		},
		"8caaa24d-5564-4523-859f-fe31a8913929": {
			"classDefinition": "com.sap.bpm.wfs.ui.MailTaskSymbol",
			"x": 162,
			"y": 667.9999964237213,
			"width": 100,
			"height": 60,
			"object": "32bab0c0-368f-488d-ae01-c85bdfa0dcb2"
		},
		"b3e9f50d-7b5f-4c13-bae6-486b76c47a08": {
			"classDefinition": "com.sap.bpm.wfs.ui.SequenceFlowSymbol",
			"points": "212,727.9999964237213 212,762.9999958276749 137,762.9999958276749 137,797.9999952316284",
			"sourceSymbol": "8caaa24d-5564-4523-859f-fe31a8913929",
			"targetSymbol": "53e54950-7757-4161-82c9-afa7e86cff2c",
			"object": "102590de-5e88-41b0-858a-2b76a8cc876f"
		},
		"9f12f60e-413a-43c3-a4f4-5d7b3b596921": {
			"classDefinition": "com.sap.bpm.wfs.ui.MailTaskSymbol",
			"x": 12,
			"y": 667.9999964237213,
			"width": 100,
			"height": 60,
			"object": "2d54c825-ade2-4628-9531-4ae1e937309f"
		},
		"19d77ac0-c18b-4c4f-8cec-1eac461f00ac": {
			"classDefinition": "com.sap.bpm.wfs.ui.SequenceFlowSymbol",
			"points": "137,597.9999976158142 137,632.9999970197678 212,632.9999970197678 212,667.9999964237213",
			"sourceSymbol": "eacc14de-6aa0-4adb-b8b6-f911d4302e13",
			"targetSymbol": "8caaa24d-5564-4523-859f-fe31a8913929",
			"object": "0ff9262c-b965-4571-acd7-cfdfde0e25cf"
		},
		"5f07ad05-1fce-44de-a33d-ddd7771b2d43": {
			"classDefinition": "com.sap.bpm.wfs.ui.SequenceFlowSymbol",
			"points": "62,727.9999964237213 62,762.9999958276749 137,762.9999958276749 137,797.9999952316284",
			"sourceSymbol": "9f12f60e-413a-43c3-a4f4-5d7b3b596921",
			"targetSymbol": "53e54950-7757-4161-82c9-afa7e86cff2c",
			"object": "cd52bef9-0c6c-4e9c-9b5a-f4aecca398da"
		},
		"930d320f-5fbc-46ed-9f3a-469a35c8476b": {
			"classDefinition": "com.sap.bpm.wfs.ui.ScriptTaskSymbol",
			"x": 87,
			"y": 445.9999976158142,
			"width": 100,
			"height": 60,
			"object": "65fc990b-b448-4501-812b-1a752e2b6c33"
		},
		"39fd9d8f-bf1c-466b-b01b-8ee2a2e20f5b": {
			"classDefinition": "com.sap.bpm.wfs.ui.SequenceFlowSymbol",
			"points": "137,505.9999976158142 137,555.9999976158142",
			"sourceSymbol": "930d320f-5fbc-46ed-9f3a-469a35c8476b",
			"targetSymbol": "eacc14de-6aa0-4adb-b8b6-f911d4302e13",
			"object": "406ba6c4-6860-4da0-8614-7bb8dd07893a"
		},
		"62d7f4ed-4063-4c44-af8b-39050bd44926": {
			"classDefinition": "com.sap.bpm.wfs.LastIDs",
			"maildefinition": 2,
			"sequenceflow": 11,
			"startevent": 1,
			"endevent": 2,
			"usertask": 2,
			"scripttask": 1,
			"mailtask": 2,
			"exclusivegateway": 2
		},
		"cb820822-7552-4ceb-98c6-3bbe5fd4f154": {
			"classDefinition": "com.sap.bpm.wfs.MailDefinition",
			"name": "maildefinition1",
			"to": "${context.email}",
			"subject": "The Recruitment Request has been approved",
			"text": "The Recruitment Request has been approved",
			"id": "maildefinition1"
		},
		"7d2e87a5-e37d-4ad1-b358-343e8173bb0b": {
			"classDefinition": "com.sap.bpm.wfs.MailDefinition",
			"name": "maildefinition2",
			"to": "${context.email}",
			"subject": "The Recruitment Request has been Rejected",
			"text": "The Recruitment Request has been Rejected",
			"id": "maildefinition2"
		}
	}
}