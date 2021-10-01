POST /reliablemessaging/intermediary HTTP/1.1
Host: 127.0.0.1
SOAPAction: "urn:nhs:names:services:itk/COPC_IN000001GB01"
Content-Length: 5403
Content-Type: multipart/related; boundary="--=_MIME-Boundary"; type="text/xml"; start="<9884d642-adbb-4c66-b95f-7f60ca86a8c2>"
Connection: close

----=_MIME-Boundary
Content-Id: <9884d642-adbb-4c66-b95f-7f60ca86a8c2>
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
		<eb:ConversationId>4127B9D7-A329-4E77-9159-9C8F60C179E3</eb:ConversationId>
		<eb:Service>urn:nhs:names:services:itk</eb:Service>
		<eb:Action>COPC_IN000001GB01</eb:Action>
		<eb:MessageData>
			<eb:MessageId>4127B9D7-A329-4E77-9159-9C8F60C179E3</eb:MessageId>
			<eb:Timestamp>2016-06-28T12:26:15</eb:Timestamp>
		</eb:MessageData>
		<eb:DuplicateElimination/>
	</eb:MessageHeader>
	<eb:AckRequested eb:version="2.0" SOAP:mustUnderstand="1" SOAP:actor="urn:oasis:names:tc:ebxml-msg:actor:toPartyMSH" eb:signed="false"/>
	
</SOAP:Header>
<SOAP:Body>
	<eb:Manifest eb:version="2.0">
		<eb:Reference xlink:href="cid:ce950b27-6079-4187-b278-83d4f4400aef">
<eb:Schema eb:location="http://www.nhsia.nhs.uk/schemas/HL7-Message.xsd" eb:version="1.0"/>
<eb:Description xml:lang="en">HL7 payload</eb:Description>
<hl7ebxml:Payload style="HL7" encoding="XML" version="3.0"/>

</eb:Reference>
<eb:Reference xlink:href="cid:c2fea1d2-4eb1-4cb6-a0b4-ab9bcd477a55">
<eb:Description xml:lang="en">ITK Trunk Message</eb:Description>

</eb:Reference>

	</eb:Manifest>
</SOAP:Body>
</SOAP:Envelope>

----=_MIME-Boundary
Content-Id: <ce950b27-6079-4187-b278-83d4f4400aef>
Content-Type: application/xml; charset=UTF-8
Content-Transfer-Encoding: 8bit

<?xml version="1.0" encoding="UTF-8"?><COPC_IN000001GB01 xmlns="urn:hl7-org:v3">
   <id root="44759423-371C-409A-B615-5351439A18D8"/>
   <creationTime value="20160628122615"/>
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
Content-Id: <c2fea1d2-4eb1-4cb6-a0b4-ab9bcd477a55>
Content-Type: text/xml
Content-Transfer-Encoding: 8bit

<!-- $Id: infrastructure_ack_template.xml.txt 31 2016-02-23 13:55:02Z sfarrow $ -->
<itk:DistributionEnvelope xmlns:itk="urn:nhs-itk:ns:201005" xmlns:xsi="http://www.w3.org/2001/XMLSchema-instance">
	<itk:header service="urn:nhs-itk:services:201005:SendInfrastructureAck-v1-0" trackingid="9180FA72-95FB-43FC-AE77-259F8BF730EC">
		<itk:addresslist>
			<itk:address  uri="urn:nhs-uk:addressing:ods:AAA:XZ901"/>
		</itk:addresslist>
		<itk:auditIdentity>
			<itk:id uri="urn:nhs-uk:identity:BBB:test:cdaresponder"/>
		</itk:auditIdentity>
		<itk:manifest count="1">			
                        <itk:manifestitem id="uuid_B516172D-CB7D-499F-A75C-627AC2782ECB" mimetype="text/xml"/>
		</itk:manifest>
		<itk:senderAddress uri="urn:nhs-uk:addressing:ods:BBB:test:cdaresponder"/>
	</itk:header>
	<itk:payloads count="1">
		<itk:payload id="uuid_B516172D-CB7D-499F-A75C-627AC2782ECB">
			<itk:InfrastructureResponse xmlns:itk="urn:nhs-itk:ns:201005" timestamp="2016-06-28T12:25:15Z" serviceRef="urn:nhs-itk:services:201005:SendCDADocument-v2-0" trackingIdRef="23F1E260-BDBC-4DA7-8960-A2087AE87E8E" result="OK">
				<itk:reportingIdentity>
					<itk:id uri="urn:nhs-uk:identity:BBB:test:cdaresponder"/>
				</itk:reportingIdentity>
                                <itk:errors/>
			</itk:InfrastructureResponse>
		</itk:payload>
	</itk:payloads>
</itk:DistributionEnvelope>

----=_MIME-Boundary--