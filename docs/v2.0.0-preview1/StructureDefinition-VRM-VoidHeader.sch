<?xml version="1.0" encoding="UTF-8"?>
<sch:schema xmlns:sch="http://purl.oclc.org/dsdl/schematron" queryBinding="xslt2">
  <sch:ns prefix="f" uri="http://hl7.org/fhir"/>
  <sch:ns prefix="h" uri="http://www.w3.org/1999/xhtml"/>
  <!-- 
    This file contains just the constraints for the profile MessageHeader
    It includes the base constraints for the resource as well.
    Because of the way that schematrons and containment work, 
    you may need to use this schematron fragment to build a, 
    single schematron that validates contained resources (if you have any) 
  -->
  <sch:pattern>
    <sch:title>f:MessageHeader</sch:title>
    <sch:rule context="f:MessageHeader">
      <sch:assert test="count(f:id) &gt;= 1">id: minimum cardinality of 'id' is 1</sch:assert>
      <sch:assert test="count(f:destination) &gt;= 1">destination: minimum cardinality of 'destination' is 1</sch:assert>
      <sch:assert test="count(f:focus) &gt;= 1">focus: minimum cardinality of 'focus' is 1</sch:assert>
      <sch:assert test="count(f:focus) &lt;= 2">focus: maximum cardinality of 'focus' is 2</sch:assert>
    </sch:rule>
  </sch:pattern>
</sch:schema>
