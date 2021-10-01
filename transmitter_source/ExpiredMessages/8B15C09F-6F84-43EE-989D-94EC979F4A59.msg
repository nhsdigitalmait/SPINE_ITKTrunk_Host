POST /reliablemessaging/intermediary HTTP/1.1
Host: 127.0.0.1
SOAPAction: "urn:nhs:names:services:itk/COPC_IN000001GB01"
Content-Length: 5403
Content-Type: multipart/related; boundary="--=_MIME-Boundary"; type="text/xml"; start="<4fb7bf05-37bc-41fb-8046-9a21a1bf4d6b>"
Connection: close

----=_MIME-Boundary
Content-Id: <4fb7bf05-37bc-41fb-8046-9a21a1bf4d6b>
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
		<eb:ConversationId>8B15C09F-6F84-43EE-989D-94EC979F4A59</eb:ConversationId>
		<eb:Service>urn:nhs:names:services:itk</eb:Service>
		<eb:Action>COPC_IN000001GB01</eb:Action>
		<eb:MessageData>
			<eb:MessageId>8B15C09F-6F84-43EE-989D-94EC979F4A59</eb:MessageId>
			<eb:Timestamp>2016-06-28T13:32:29</eb:Timestamp>
		</eb:MessageData>
		<eb:DuplicateElimination/>
	</eb:MessageHeader>
	<eb:AckRequested eb:version="2.0" SOAP:mustUnderstand="1" SOAP:actor="urn:oasis:names:tc:ebxml-msg:actor:toPartyMSH" eb:signed="false"/>
	
</SOAP:Header>
<SOAP:Body>
	<eb:Manifest eb:version="2.0">
		<eb:Reference xlink:href="cid:de8fe9fe-4a41-4826-b343-31b677f10715">
<eb:Schema eb:location="http://www.nhsia.nhs.uk/schemas/HL7-Message.xsd" eb:version="1.0"/>
<eb:Description xml:lang="en">HL7 payload</eb:Description>
<hl7ebxml:Payload style="HL7" encoding="XML" version="3.0"/>

</eb:Reference>
<eb:Reference xlink:href="cid:578a0a9f-6390-4d44-8ab6-f920568d2041">
<eb:Description xml:lang="en">ITK Trunk Message</eb:Description>

</eb:Reference>

	</eb:Manifest>
</SOAP:Body>
</SOAP:Envelope>

----=_MIME-Boundary
Content-Id: <de8fe9fe-4a41-4826-b343-31b677f10715>
Content-Type: application/xml; charset=UTF-8
Content-Transfer-Encoding: 8bit

<?xml version="1.0" encoding="UTF-8"?><COPC_IN000001GB01 xmlns="urn:hl7-org:v3">
   <id root="17CEF590-42E7-4978-A614-1FBBA917F13C"/>
   <creationTime value="20160628133229"/>
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
Content-Id: <578a0a9f-6390-4d44-8ab6-f920568d2041>
Content-Type: text/xml
Content-Transfer-Encoding: 8bit

<!-- $Id: infrastructure_ack_template.xml.txt 31 2016-02-23 13:55:02Z sfarrow $ -->
<itk:DistributionEnvelope xmlns:itk="urn:nhs-itk:ns:201005" xmlns:xsi="http://www.w3.org/2001/XMLSchema-instance">
	<itk:header service="urn:nhs-itk:services:201005:SendInfrastructureAck-v1-0" trackingid="F17E2209-938C-49AE-A2A2-A3C92F2316A0">
		<itk:addresslist>
			<itk:address  uri="urn:nhs-uk:addressing:ods:AAA:XZ901"/>
		</itk:addresslist>
		<itk:auditIdentity>
			<itk:id uri="urn:nhs-uk:identity:BBB:test:cdaresponder"/>
		</itk:auditIdentity>
		<itk:manifest count="1">			
                        <itk:manifestitem id="uuid_804829EC-E42D-489C-BBD7-850735398CFC" mimetype="text/xml"/>
		</itk:manifest>
		<itk:senderAddress uri="urn:nhs-uk:addressing:ods:BBB:test:cdaresponder"/>
	</itk:header>
	<itk:payloads count="1">
		<itk:payload id="uuid_804829EC-E42D-489C-BBD7-850735398CFC">
			<itk:InfrastructureResponse xmlns:itk="urn:nhs-itk:ns:201005" timestamp="2016-06-28T13:31:29Z" serviceRef="urn:nhs-itk:services:201005:SendCDADocument-v2-0" trackingIdRef="23F1E260-BDBC-4DA7-8960-A2087AE87E8E" result="OK">
				<itk:reportingIdentity>
					<itk:id uri="urn:nhs-uk:identity:BBB:test:cdaresponder"/>
				</itk:reportingIdentity>
                                <itk:errors/>
			</itk:InfrastructureResponse>
		</itk:payload>
	</itk:payloads>
</itk:DistributionEnvelope>

----=_MIME-Boundary--