Profile: VoidMessage
Parent: Bundle
Id: VRM-VoidMessage
Title: "Void Message (for mortality, birth, and fetal death)"
Description:   "Message for voiding mortality, birth, and fetal death records."
* insert CommonBundleStuff
* insert BundleEntry(messageHeader, 1, 1, Void Header , Void Header, VoidHeader)
* insert BundleEntry(messageParameters, 1, 1, Void Parameters, Void Parameters, VoidParameters)
