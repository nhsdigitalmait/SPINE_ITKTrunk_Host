@echo off

SET CONFIG=%1
echo Validating %CONFIG% via ITK TRUNK over TMS

java -jar TMSUtils.jar ..\transmitter_sent_messages ..\message_reference
echo Messages extracted from log

copy ..\transmitter_sent_messages\*.* ..\message_reference\log >NUL

del ..\validator_reports\*.* /q
del ..\messages_for_validation\*.* /q
del ..\message_reference\validation_SPINE\report\*.* /q

copy ..\message_reference\validation_SPINE\*.* ..\messages_for_validation >NUL
del  ..\messages_for_validation\*200_OK*.* /q
del ..\messages_for_validation\*ebxmlACK*.* /q
java -jar ..\..\..\TKW.jar -spinevalidate ..\tkwhost.properties

copy ..\validator_reports\*.* ..\message_reference\validation_SPINE\report >NUL

del ..\message_reference\validation_ITK\report\*.* /q
del ..\..\%CONFIG%\validator_reports\*.* /q
del ..\messages_for_validation\*.* /q
copy ..\message_reference\validation_ITK\*.* ..\..\%CONFIG%\messages_for_validation >NUL
java -jar ..\..\..\TKW.jar -validate ..\..\%CONFIG%\tkw.properties
copy ..\..\%CONFIG%\validator_reports\*.* ..\message_reference\validation_ITK\report >NUL
