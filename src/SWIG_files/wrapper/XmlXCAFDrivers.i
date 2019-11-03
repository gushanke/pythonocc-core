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

- time : 2019-11-03 11:38:44
- operating system : debian Linux 4.15.0-66-generic
- occt version targeted : 7.4.0
*/

%define XMLXCAFDRIVERSDOCSTRING
"No docstring provided."
%enddef
%module (package="OCC.Core", docstring=XMLXCAFDRIVERSDOCSTRING) XmlXCAFDrivers

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


%include XmlXCAFDrivers_headers.i

/* public enums */
/* end public enums declaration */

/* templates */
/* end templates declaration */

/* typedefs */
/* end typedefs declaration */

/* handles */
%wrap_handle(XmlXCAFDrivers_DocumentRetrievalDriver)
%wrap_handle(XmlXCAFDrivers_DocumentStorageDriver)
/* end handles declaration */

%rename(xmlxcafdrivers) XmlXCAFDrivers;
%nodefaultctor XmlXCAFDrivers;
class XmlXCAFDrivers {
	public:
		%feature("compactdefaultargs") DefineFormat;
		%feature("autodoc", "	* Defines format 'XmlXCAF' and registers its read and write drivers in the specified application

	:param theApp:
	:type theApp: opencascade::handle<TDocStd_Application> &
	:rtype: void
") DefineFormat;
		static void DefineFormat (const opencascade::handle<TDocStd_Application> & theApp);
		%feature("compactdefaultargs") Factory;
		%feature("autodoc", "	* Depending from the ID, returns a list of storage or retrieval attribute drivers. Used for plugin. //! Standard data model drivers =========================== 47b0b826-d931-11d1-b5da-00a0c9064368 Transient-Persistent 47b0b827-d931-11d1-b5da-00a0c9064368 Persistent-Transient //! XCAF data model drivers ================================= ed8793f8-3142-11d4-b9b5-0060b0ee281b Transient-Persistent ed8793f9-3142-11d4-b9b5-0060b0ee281b Persistent-Transient ed8793fa-3142-11d4-b9b5-0060b0ee281b XCAFSchema

	:param aGUID:
	:type aGUID: Standard_GUID &
	:rtype: opencascade::handle<Standard_Transient>
") Factory;
		static const opencascade::handle<Standard_Transient> & Factory (const Standard_GUID & aGUID);
};


%extend XmlXCAFDrivers {
	%pythoncode {
	__repr__ = _dumps_object
	}
};
%nodefaultctor XmlXCAFDrivers_DocumentRetrievalDriver;
class XmlXCAFDrivers_DocumentRetrievalDriver : public XmlDrivers_DocumentRetrievalDriver {
	public:
		%feature("compactdefaultargs") AttributeDrivers;
		%feature("autodoc", "	:param theMsgDriver:
	:type theMsgDriver: opencascade::handle<Message_Messenger> &
	:rtype: opencascade::handle<XmlMDF_ADriverTable>
") AttributeDrivers;
		virtual opencascade::handle<XmlMDF_ADriverTable> AttributeDrivers (const opencascade::handle<Message_Messenger> & theMsgDriver);
		%feature("compactdefaultargs") XmlXCAFDrivers_DocumentRetrievalDriver;
		%feature("autodoc", "	:rtype: None
") XmlXCAFDrivers_DocumentRetrievalDriver;
		 XmlXCAFDrivers_DocumentRetrievalDriver ();
};


%make_alias(XmlXCAFDrivers_DocumentRetrievalDriver)

%extend XmlXCAFDrivers_DocumentRetrievalDriver {
	%pythoncode {
	__repr__ = _dumps_object
	}
};
%nodefaultctor XmlXCAFDrivers_DocumentStorageDriver;
class XmlXCAFDrivers_DocumentStorageDriver : public XmlDrivers_DocumentStorageDriver {
	public:
		%feature("compactdefaultargs") AttributeDrivers;
		%feature("autodoc", "	:param theMsgDriver:
	:type theMsgDriver: opencascade::handle<Message_Messenger> &
	:rtype: opencascade::handle<XmlMDF_ADriverTable>
") AttributeDrivers;
		virtual opencascade::handle<XmlMDF_ADriverTable> AttributeDrivers (const opencascade::handle<Message_Messenger> & theMsgDriver);
		%feature("compactdefaultargs") XmlXCAFDrivers_DocumentStorageDriver;
		%feature("autodoc", "	:param theCopyright:
	:type theCopyright: TCollection_ExtendedString &
	:rtype: None
") XmlXCAFDrivers_DocumentStorageDriver;
		 XmlXCAFDrivers_DocumentStorageDriver (const TCollection_ExtendedString & theCopyright);
};


%make_alias(XmlXCAFDrivers_DocumentStorageDriver)

%extend XmlXCAFDrivers_DocumentStorageDriver {
	%pythoncode {
	__repr__ = _dumps_object
	}
};
/* harray1 class */
/* harray2 class */
/* harray2 class */
