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

- operating system : debian Linux 4.15.0-66-generic
- occt version targeted : 7.4.0
*/

%define RWOBJDOCSTRING
"RWObj module, see official documentation at
https://www.opencascade.com/doc/occt-7.4.0/refman/html/package_RWObj.html"
%enddef
%module (package="OCC.Core", docstring=RWOBJDOCSTRING) RWObj

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


%{
#include<RWObj_module.hxx>

//Dependencies
#include<Standard_module.hxx>
#include<NCollection_module.hxx>
#include<TopoDS_module.hxx>
#include<TCollection_module.hxx>
#include<Graphic3d_module.hxx>
#include<gp_module.hxx>
#include<CDF_module.hxx>
#include<PCDM_module.hxx>
#include<TDF_module.hxx>
#include<TDocStd_module.hxx>
#include<Graphic3d_module.hxx>
#include<Geom_module.hxx>
#include<TShort_module.hxx>
#include<Aspect_module.hxx>
#include<Bnd_module.hxx>
#include<Quantity_module.hxx>
#include<TColgp_module.hxx>
#include<TColStd_module.hxx>
#include<TCollection_module.hxx>
#include<Storage_module.hxx>
%};
%import Standard.i
%import NCollection.i
%import TopoDS.i
%import TCollection.i
%import Graphic3d.i
%import gp.i
/* public enums */
enum RWObj_SubMeshReason {
	RWObj_SubMeshReason_NewObject = 0,
	RWObj_SubMeshReason_NewGroup = 1,
	RWObj_SubMeshReason_NewMaterial = 2,
	RWObj_SubMeshReason_NewSmoothGroup = 3,
};

/* end public enums declaration */

/* handles */
%wrap_handle(RWObj_Reader)
%wrap_handle(RWObj_TriangulationReader)
/* end handles declaration */

/* templates */
/* end templates declaration */

/* typedefs */
/* end typedefs declaration */

%nodefaultctor RWObj_IShapeReceiver;
class RWObj_IShapeReceiver {
	public:
		%feature("compactdefaultargs") BindNamedShape;
		%feature("autodoc", "	* @param theShape shape to register @param theName shape name @param theMaterial shape material @param theIsRootShape indicates that this is a root object (free shape)

	:param theShape:
	:type theShape: TopoDS_Shape &
	:param theName:
	:type theName: TCollection_AsciiString &
	:param theMaterial:
	:type theMaterial: RWObj_Material *
	:param theIsRootShape:
	:type theIsRootShape: bool
	:rtype: None
") BindNamedShape;
		void BindNamedShape (const TopoDS_Shape & theShape,const TCollection_AsciiString & theName,const RWObj_Material * theMaterial,const Standard_Boolean theIsRootShape);
};


%extend RWObj_IShapeReceiver {
	%pythoncode {
	__repr__ = _dumps_object
	}
};
%nodefaultctor RWObj_Material;
class RWObj_Material {
	public:
		TCollection_AsciiString Name;
		TCollection_AsciiString DiffuseTexture;
		TCollection_AsciiString SpecularTexture;
		TCollection_AsciiString BumpTexture;
		Quantity_Color AmbientColor;
		Quantity_Color DiffuseColor;
		Quantity_Color SpecularColor;
		Standard_ShortReal Shininess;
		Standard_ShortReal Transparency;
		%feature("compactdefaultargs") RWObj_Material;
		%feature("autodoc", "	:rtype: None
") RWObj_Material;
		 RWObj_Material ();
};


%extend RWObj_Material {
	%pythoncode {
	__repr__ = _dumps_object
	}
};
%nodefaultctor RWObj_Reader;
class RWObj_Reader : public Standard_Transient {
	public:
		class ObjVec3iHasher {};
		class VectorOfVertices {};
		%feature("compactdefaultargs") ExternalFiles;
		%feature("autodoc", "	* Return the list of external file references.

	:rtype: NCollection_IndexedMap<TCollection_AsciiString>
") ExternalFiles;
		const NCollection_IndexedMap<TCollection_AsciiString> & ExternalFiles ();
		%feature("compactdefaultargs") FileComments;
		%feature("autodoc", "	* Returns file comments (lines starting with # at the beginning of file).

	:rtype: TCollection_AsciiString
") FileComments;
		const TCollection_AsciiString & FileComments ();
		%feature("compactdefaultargs") IsSinglePrecision;
		%feature("autodoc", "	* Return single precision flag for reading vertex data (coordinates); False by default.

	:rtype: bool
") IsSinglePrecision;
		Standard_Boolean IsSinglePrecision ();
		%feature("compactdefaultargs") MemoryLimit;
		%feature("autodoc", "	* Returns memory limit in bytes; -1 (no limit) by default.

	:rtype: Standard_Size
") MemoryLimit;
		Standard_Size MemoryLimit ();
		%feature("compactdefaultargs") NbProbeElems;
		%feature("autodoc", "	* //!< number of probed polygon elements (of unknown size).

	:rtype: int
") NbProbeElems;
		Standard_Integer NbProbeElems ();
		%feature("compactdefaultargs") NbProbeNodes;
		%feature("autodoc", "	* Number of probed nodes.

	:rtype: int
") NbProbeNodes;
		Standard_Integer NbProbeNodes ();
		%feature("compactdefaultargs") SetMemoryLimit;
		%feature("autodoc", "	* Specify memory limit in bytes, so that import will be aborted by specified limit before memory allocation error occurs.

	:param theMemLimit:
	:type theMemLimit: Standard_Size
	:rtype: None
") SetMemoryLimit;
		void SetMemoryLimit (Standard_Size theMemLimit);
		%feature("compactdefaultargs") SetSinglePrecision;
		%feature("autodoc", "	* Setup single/double precision flag for reading vertex data (coordinates).

	:param theIsSinglePrecision:
	:type theIsSinglePrecision: bool
	:rtype: None
") SetSinglePrecision;
		void SetSinglePrecision (Standard_Boolean theIsSinglePrecision);
		%feature("compactdefaultargs") SetTransformation;
		%feature("autodoc", "	* Setup transformation from one coordinate system to another. OBJ file might be exported following various coordinate system conventions, so that it might be useful automatically transform data during file reading.

	:param theCSConverter:
	:type theCSConverter: RWMesh_CoordinateSystemConverter &
	:rtype: None
") SetTransformation;
		void SetTransformation (const RWMesh_CoordinateSystemConverter & theCSConverter);
		%feature("compactdefaultargs") Transformation;
		%feature("autodoc", "	* Return transformation from one coordinate system to another; no transformation by default.

	:rtype: RWMesh_CoordinateSystemConverter
") Transformation;
		const RWMesh_CoordinateSystemConverter & Transformation ();
};


%make_alias(RWObj_Reader)

%extend RWObj_Reader {
	%pythoncode {
	__repr__ = _dumps_object
	}
};
%nodefaultctor RWObj_SubMesh;
class RWObj_SubMesh {
	public:
		TCollection_AsciiString Object;
		TCollection_AsciiString Group;
		TCollection_AsciiString SmoothGroup;
		TCollection_AsciiString Material;
};


%extend RWObj_SubMesh {
	%pythoncode {
	__repr__ = _dumps_object
	}
};
%nodefaultctor RWObj_CafReader;
class RWObj_CafReader : public RWMesh_CafReader, protected RWObj_IShapeReceiver {
	public:
		%feature("compactdefaultargs") IsSinglePrecision;
		%feature("autodoc", "	* Return single precision flag for reading vertex data (coordinates); False by default.

	:rtype: bool
") IsSinglePrecision;
		Standard_Boolean IsSinglePrecision ();
		%feature("compactdefaultargs") RWObj_CafReader;
		%feature("autodoc", "	* Empty constructor.

	:rtype: None
") RWObj_CafReader;
		 RWObj_CafReader ();
		%feature("compactdefaultargs") SetSinglePrecision;
		%feature("autodoc", "	* Setup single/double precision flag for reading vertex data (coordinates).

	:param theIsSinglePrecision:
	:type theIsSinglePrecision: bool
	:rtype: None
") SetSinglePrecision;
		void SetSinglePrecision (Standard_Boolean theIsSinglePrecision);
};


%extend RWObj_CafReader {
	%pythoncode {
	__repr__ = _dumps_object
	}
};
%nodefaultctor RWObj_TriangulationReader;
class RWObj_TriangulationReader : public RWObj_Reader {
	public:
		%feature("compactdefaultargs") SetCreateShapes;
		%feature("autodoc", "	* Set flag to create shapes.

	:param theToCreateShapes:
	:type theToCreateShapes: bool
	:rtype: None
") SetCreateShapes;
		void SetCreateShapes (Standard_Boolean theToCreateShapes);
		%feature("compactdefaultargs") SetShapeReceiver;
		%feature("autodoc", "	* Set shape receiver callback.

	:param theReceiver:
	:type theReceiver: RWObj_IShapeReceiver *
	:rtype: None
") SetShapeReceiver;
		void SetShapeReceiver (RWObj_IShapeReceiver * theReceiver);
};


%make_alias(RWObj_TriangulationReader)

%extend RWObj_TriangulationReader {
	%pythoncode {
	__repr__ = _dumps_object
	}
};
/* harray1 class */
/* harray2 class */
/* harray2 class */
