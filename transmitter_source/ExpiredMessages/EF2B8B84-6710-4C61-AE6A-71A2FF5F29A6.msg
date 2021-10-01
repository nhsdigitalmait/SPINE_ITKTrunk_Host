POST /reliablemessaging/intermediary HTTP/1.1
Host: localhost
SOAPAction: "urn:nhs:names:services:itk/COPC_IN000001GB01"
Content-Length: 7681
Content-Type: multipart/related; boundary="--=_MIME-Boundary"; type="text/xml"; start="<0c60938c-dc63-4ec8-996d-e6a28c60ea50>"
Connection: close

----=_MIME-Boundary
Content-Id: <0c60938c-dc63-4ec8-996d-e6a28c60ea50>
Content-Type: text/xml
Content-Transfer-Encoding: 8bit

<?xml version="1.0" encoding="UTF-8"?>
<SOAP:Envelope xmlns:xsi="http://www.w3c.org/2001/XML-Schema-Instance" xmlns:SOAP="http://schemas.xmlsoap.org/soap/envelope/" xmlns:eb="http://www.oasis-open.org/committees/ebxml-msg/schema/msg-header-2_0.xsd" xmlns:hl7ebxml="urn:hl7-org:transport/ebxml/DSTUv1.0" xmlns:xlink="http://www.w3.org/1999/xlink">
<SOAP:Header>
	<eb:MessageHeader SOAP:mustUnderstand="1" eb:version="2.0">
		<eb:From>
			<eb:PartyId eb:type="urn:nhs:names:partyType:ocs+serviceInstance">BBB-654321</eb:PartyId>
		</eb:From>
		<eb:To>
			<eb:PartyId eb:type="urn:nhs:names:partyType:ocs+serviceInstance">AAA-123456</eb:PartyId>
		</eb:To>
		<eb:CPAId>S3024519A3110234</eb:CPAId>
		<eb:ConversationId>EF2B8B84-6710-4C61-AE6A-71A2FF5F29A6</eb:ConversationId>
		<eb:Service>urn:nhs:names:services:itk</eb:Service>
		<eb:Action>COPC_IN000001GB01</eb:Action>
		<eb:MessageData>
			<eb:MessageId>EF2B8B84-6710-4C61-AE6A-71A2FF5F29A6</eb:MessageId>
			<eb:Timestamp>2016-08-11T17:19:03</eb:Timestamp>
		</eb:MessageData>
		<eb:DuplicateElimination/>
	</eb:MessageHeader>
	<eb:AckRequested eb:version="2.0" SOAP:mustUnderstand="1" SOAP:actor="urn:oasis:names:tc:ebxml-msg:actor:toPartyMSH" eb:signed="false"/>
	
</SOAP:Header>
<SOAP:Body>
	<eb:Manifest eb:version="2.0">
		<eb:Reference xlink:href="cid:3bc5a456-d694-4518-b61b-33026c602cc7">
<eb:Schema eb:location="http://www.nhsia.nhs.uk/schemas/HL7-Message.xsd" eb:version="1.0"/>
<eb:Description xml:lang="en">HL7 payload</eb:Description>
<hl7ebxml:Payload style="HL7" encoding="XML" version="3.0"/>

</eb:Reference>
<eb:Reference xlink:href="cid:2fccebd4-3b50-42aa-9924-b0772db0852e">
<eb:Description xml:lang="en">ITK Trunk Message</eb:Description>

</eb:Reference>

	</eb:Manifest>
</SOAP:Body>
</SOAP:Envelope>

----=_MIME-Boundary
Content-Id: <3bc5a456-d694-4518-b61b-33026c602cc7>
Content-Type: application/xml; charset=UTF-8
Content-Transfer-Encoding: 8bit

<?xml version="1.0" encoding="UTF-8"?><COPC_IN000001GB01 xmlns="urn:hl7-org:v3">
   <id root="63DE7D78-7FBA-4F7B-A566-8372AA93B3CB"/>
   <creationTime value="20160811171903"/>
   <versionCode code="V3NPfIT4.2.00"/>
   <interactionId extension="COPC_IN000001GB01" root="2.16.840.1.113883.2.1.3.2.4.12"/>
   <processingCode code="P"/>
   <processingModeCode code="T"/>
   <acceptAckCode code="NE"/>
   <communicationFunctionRcv>
      <device classCode="DEV" determinerCode="INSTANCE">
         <id extension="866971180017" root="1.2.826.0.1285.0.2.0.107"/>
      </device>
   </communicationFunctionRcv>
   <communicationFunctionSnd>
      <device classCode="DEV" determinerCode="INSTANCE">
         <id extension="000000000000" root="1.2.826.0.1285.0.2.0.107"/>
      </device>
   </communicationFunctionSnd>
   <ControlActEvent classCode="CACT" moodCode="EVN">
      <author typeCode="AUT">
         <AgentPersonSDS classCode="AGNT">
            <id extension="012345678901" root="1.2.826.0.1285.0.2.0.67"/>
            <agentPersonSDS classCode="PSN" determinerCode="INSTANCE">
               <id extension="687227875014" root="1.2.826.0.1285.0.2.0.65"/>
            </agentPersonSDS>
            <part typeCode="PART">
               <partSDSRole classCode="ROL">
                  <id extension="S0080:G0450:R5080" root="1.2.826.0.1285.0.2.1.104"/>
               </partSDSRole>
            </part>
         </AgentPersonSDS>
      </author>

      <author1 typeCode="AUT">
         <AgentSystemSDS classCode="AGNT">
            <agentSystemSDS classCode="DEV" determinerCode="INSTANCE">
               <id extension="000000000000" root="1.2.826.0.1285.0.2.0.107"/>
            </agentSystemSDS>
         </AgentSystemSDS>
      </author1>
</ControlActEvent>
</COPC_IN000001GB01>

----=_MIME-Boundary
Content-Id: <2fccebd4-3b50-42aa-9924-b0772db0852e>
Content-Type: text/xml
Content-Transfer-Encoding: 8bit

<itk:DistributionEnvelope xmlns:itk="urn:nhs-itk:ns:201005"><itk:header service="urn:nhs-itk:services:201005:SendBusinessAck-v1-0" trackingid="7960F840-1841-4A15-B96F-F0D5B976C728"><itk:addresslist><itk:address type="2.16.840.1.113883.2.1.3.2.4.18.22" uri="urn:nhs-uk:addressing:ods:AAA:XZ901"/></itk:addresslist><itk:auditIdentity><itk:id type="2.16.840.1.113883.2.1.3.2.4.18.27" uri="urn:nhs-uk:identity:BBB:test:cdaresponder"/></itk:auditIdentity><itk:manifest count="1"><itk:manifestitem mimetype="text/xml" profileid="urn:nhs-en:profile:ITKBusinessAcknowledgement-v2-0" base64="false" compressed="false" encrypted="false" id="uuid_7FCAC383-9540-434C-847B-D7E3A1AB666D"/></itk:manifest><itk:senderAddress type="2.16.840.1.113883.2.1.3.2.4.18.22" uri="urn:nhs-uk:addressing:ods:BBB:test:cdaresponder"/><itk:handlingSpecification><itk:spec key="urn:nhs-itk:ns:201005:infackrequested" value="true"/><itk:spec key="urn:nhs-itk:ns:201005:interaction" value="urn:nhs-itk:interaction:ITKBusinessAcknowledgement-v1-0"/></itk:handlingSpecification></itk:header><itk:payloads count="1"><itk:payload id="uuid_7FCAC383-9540-434C-847B-D7E3A1AB666D"><hl7:BusinessResponseMessage xmlns:hl7="urn:hl7-org:v3" xmlns:xsi="http://www.w3.org/2001/XMLSchema-instance">
	<hl7:id root="ABE3B3F5-FA12-4DC9-A46E-089BC5C66612"/>
	<hl7:creationTime value="20160811171737"/>
	<hl7:interactionId root="2.16.840.1.113883.2.1.3.2.4.12" extension="urn:nhs-itk:interaction:primaryRecipientNonCodedCDADocument-v2-0"/>
	<hl7:acknowledgedBy3 typeCode="AA">
		<hl7:conveyingTransmission>
			<hl7:id root="23F1E260-BDBC-4DA7-8960-A2087AE87E8E"/>
		</hl7:conveyingTransmission>
	</hl7:acknowledgedBy3>
	<hl7:communicationFunction1 typeCode="SND">
		<hl7:entity classCode="ENT" determinerCode="INSTANCE">
			<hl7:id root="2.16.840.1.113883.2.1.3.2.4.18.22" extension="urn:nhs-uk:addressing:ods:AAA:XZ901"/>
		</hl7:entity>
	</hl7:communicationFunction1>
	<hl7:communicationFunction typeCode="RCV">
		<hl7:entity classCode="ENT" determinerCode="INSTANCE">
			<hl7:id root="2.16.840.1.113883.2.1.3.2.4.18.22" extension="urn:nhs-uk:addressing:ods:BBB:test:cdaresponder"/>
		</hl7:entity>
	</hl7:communicationFunction>
	<hl7:controlActEvent1 classCode="CACT" moodCode="EVN">
		<hl7:author typeCode="AUT" contextControlCode="OP">
			<hl7:COCD_TP145207GB01.AssignedAuthorDevice classCode="ASSIGNED">
				<hl7:id root="2.16.840.1.113883.2.1.3.2.4.18.24" extension="ITK-NICA-TKW"/>
				<hl7:templateId root="2.16.840.1.113883.2.1.3.2.4.18.2" extension="COCD_TP145207GB01#AssignedAuthorDevice"/>
				<hl7:assignedAuthoringDevice classCode="DEV" determinerCode="INSTANCE">
					<hl7:manufacturerModelName>ITK Accreditation NICA-TKW</hl7:manufacturerModelName>
					<hl7:softwareName>org.warlock.tk.internalservices.rules.routingactor.RoutingActor</hl7:softwareName>
					<hl7:templateId root="2.16.840.1.113883.2.1.3.2.4.18.2" extension="COCD_TP145207GB01#assignedAuthoringDevice"/>
				</hl7:assignedAuthoringDevice>
				<hl7:representedOrganization classCode="ORG" determinerCode="INSTANCE">
					<hl7:id root="2.16.840.1.113883.2.1.3.2.4.19.1" extension="X09"/>
					<hl7:name>NICA-TKW</hl7:name>
					<hl7:templateId root="2.16.840.1.113883.2.1.3.2.4.18.2" extension="COCD_TP145207GB01#representedOrganization"/>
				</hl7:representedOrganization>
			</hl7:COCD_TP145207GB01.AssignedAuthorDevice>
		</hl7:author>
	</hl7:controlActEvent1>
	<hl7:acknowledgedBy2 typeCode="AA">
		<hl7:conveyingTransmission>
			<hl7:id root="uuid_E052276A-762F-4162-BED7-D38823BD3540"/>
		</hl7:conveyingTransmission>
	</hl7:acknowledgedBy2>
</hl7:BusinessResponseMessage>
</itk:payload></itk:payloads></itk:DistributionEnvelope>
----=_MIME-Boundary--