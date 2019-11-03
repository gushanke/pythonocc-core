/*
Copyright 2008-2019 Thomas Paviot (tpaviot@gmail.com)

This file is part of pythonOCC.
pythonOCC is free software: you can redistribute it and/or modify
it under the terms of the GNU Lesser General Public License as published by
the Free Software Foundation, either version 3 of the License, or
(at your option) any later version.

pythonOCC is distributed in the hope that it will be useful,
but WITHOUT ANY WARRANTY; without even the implied warranty of
MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the
GNU Lesser General Public License for more details.

You should have received a copy of the GNU Lesser General Public License
along with pythonOCC.  If not, see <http://www.gnu.org/licenses/>.
*/

/*
This file was automatically generated using the pythonocc_generator, see
https://github.com/tpaviot/pythonocc-generator.

This file is platform independant, but was generated under the following
conditions:

- time : 2019-11-03 11:38:43
- operating system : debian Linux 4.15.0-66-generic
- occt version targeted : 7.4.0
*/

%define XMLDRIVERSDOCSTRING
"No docstring provided."
%enddef
%module (package="OCC.Core", docstring=XMLDRIVERSDOCSTRING) XmlDrivers

#pragma SWIG nowarn=504,325,503,520,350,351,383,389,394,395, 404

%{
#ifdef WNT
#pragma warning(disable : 4716)
#endif
%}

%include ../common/CommonIncludes.i
%include ../common/ExceptionCatcher.i
%include ../common/FunctionTransformers.i
%include ../common/Operators.i
%include ../common/OccHandle.i


%include XmlDrivers_headers.i

/* public enums */
/* end public enums declaration */

/* templates */
/* end templates declaration */

/* typedefs */
/* end typedefs declaration */

/* handles */
%wrap_handle(XmlDrivers_DocumentRetrievalDriver)
%wrap_handle(XmlDrivers_DocumentStorageDriver)
/* end handles declaration */

%rename(xmldrivers) XmlDrivers;
%nodefaultctor XmlDrivers;
class XmlDrivers {
	public:
		%feature("compactdefaultargs") AttributeDrivers;
		%feature("autodoc", "	:param theMsgDriver:
	:type theMsgDriver: opencascade::handle<Message_Messenger> &
	:rtype: opencascade::handle<XmlMDF_ADriverTable>
") AttributeDrivers;
		static opencascade::handle<XmlMDF_ADriverTable> AttributeDrivers (const opencascade::handle<Message_Messenger> & theMsgDriver);
		%feature("compactdefaultargs") DefineFormat;
		%feature("autodoc", "	* Defines format 'XmlOcaf' and registers its read and write drivers in the specified application

	:param theApp:
	:type theApp: opencascade::handle<TDocStd_Application> &
	:rtype: void
") DefineFormat;
		static void DefineFormat (const opencascade::handle<TDocStd_Application> & theApp);
		%feature("compactdefaultargs") Factory;
		%feature("autodoc", "	:param theGUID:
	:type theGUID: Standard_GUID &
	:rtype: opencascade::handle<Standard_Transient>
") Factory;
		static const opencascade::handle<Standard_Transient> & Factory (const Standard_GUID & theGUID);
};


%extend XmlDrivers {
	%pythoncode {
	__repr__ = _dumps_object
	}
};
%nodefaultctor XmlDrivers_DocumentRetrievalDriver;
class XmlDrivers_DocumentRetrievalDriver : public XmlLDrivers_DocumentRetrievalDriver {
	public:
		%feature("compactdefaultargs") AttributeDrivers;
		%feature("autodoc", "	:param theMsgDriver:
	:type theMsgDriver: opencascade::handle<Message_Messenger> &
	:rtype: opencascade::handle<XmlMDF_ADriverTable>
") AttributeDrivers;
		virtual opencascade::handle<XmlMDF_ADriverTable> AttributeDrivers (const opencascade::handle<Message_Messenger> & theMsgDriver);
		%feature("compactdefaultargs") ReadShapeSection;
		%feature("autodoc", "	:param thePDoc:
	:type thePDoc: XmlObjMgt_Element &
	:param theMsgDriver:
	:type theMsgDriver: opencascade::handle<Message_Messenger> &
	:rtype: opencascade::handle<XmlMDF_ADriver>
") ReadShapeSection;
		virtual opencascade::handle<XmlMDF_ADriver> ReadShapeSection (const XmlObjMgt_Element & thePDoc,const opencascade::handle<Message_Messenger> & theMsgDriver);
		%feature("compactdefaultargs") ShapeSetCleaning;
		%feature("autodoc", "	:param theDriver:
	:type theDriver: opencascade::handle<XmlMDF_ADriver> &
	:rtype: void
") ShapeSetCleaning;
		virtual void ShapeSetCleaning (const opencascade::handle<XmlMDF_ADriver> & theDriver);
		%feature("compactdefaultargs") XmlDrivers_DocumentRetrievalDriver;
		%feature("autodoc", "	:rtype: None
") XmlDrivers_DocumentRetrievalDriver;
		 XmlDrivers_DocumentRetrievalDriver ();
};


%make_alias(XmlDrivers_DocumentRetrievalDriver)

%extend XmlDrivers_DocumentRetrievalDriver {
	%pythoncode {
	__repr__ = _dumps_object
	}
};
%nodefaultctor XmlDrivers_DocumentStorageDriver;
class XmlDrivers_DocumentStorageDriver : public XmlLDrivers_DocumentStorageDriver {
	public:
		%feature("compactdefaultargs") AttributeDrivers;
		%feature("autodoc", "	:param theMsgDriver:
	:type theMsgDriver: opencascade::handle<Message_Messenger> &
	:rtype: opencascade::handle<XmlMDF_ADriverTable>
") AttributeDrivers;
		virtual opencascade::handle<XmlMDF_ADriverTable> AttributeDrivers (const opencascade::handle<Message_Messenger> & theMsgDriver);
		%feature("compactdefaultargs") WriteShapeSection;
		%feature("autodoc", "	:param thePDoc:
	:type thePDoc: XmlObjMgt_Element &
	:rtype: bool
") WriteShapeSection;
		virtual Standard_Boolean WriteShapeSection (XmlObjMgt_Element & thePDoc);
		%feature("compactdefaultargs") XmlDrivers_DocumentStorageDriver;
		%feature("autodoc", "	:param theCopyright:
	:type theCopyright: TCollection_ExtendedString &
	:rtype: None
") XmlDrivers_DocumentStorageDriver;
		 XmlDrivers_DocumentStorageDriver (const TCollection_ExtendedString & theCopyright);
};


%make_alias(XmlDrivers_DocumentStorageDriver)

%extend XmlDrivers_DocumentStorageDriver {
	%pythoncode {
	__repr__ = _dumps_object
	}
};
/* harray1 class */
/* harray2 class */
/* harray2 class */
