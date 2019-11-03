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

- time : 2019-11-03 11:38:14
- operating system : debian Linux 4.15.0-66-generic
- occt version targeted : 7.4.0
*/

%define GEOMPROJLIBDOCSTRING
"No docstring provided."
%enddef
%module (package="OCC.Core", docstring=GEOMPROJLIBDOCSTRING) GeomProjLib

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


%include GeomProjLib_headers.i

/* public enums */
/* end public enums declaration */

/* templates */
/* end templates declaration */

/* typedefs */
/* end typedefs declaration */

/* handles */
/* end handles declaration */

%rename(geomprojlib) GeomProjLib;
class GeomProjLib {
	public:
		%feature("compactdefaultargs") Curve2d;
		%feature("autodoc", "	* gives the 2d-curve of a 3d-curve lying on a surface ( uses GeomProjLib_ProjectedCurve ) The 3dCurve is taken between the parametrization range [First, Last] <Tolerance> is used as input if the projection needs an approximation. In this case, the reached tolerance is set in <Tolerance> as output. WARNING : if the projection has failed, this method returns a null Handle.

	:param C:
	:type C: opencascade::handle<Geom_Curve> &
	:param First:
	:type First: float
	:param Last:
	:type Last: float
	:param S:
	:type S: opencascade::handle<Geom_Surface> &
	:param UFirst:
	:type UFirst: float
	:param ULast:
	:type ULast: float
	:param VFirst:
	:type VFirst: float
	:param VLast:
	:type VLast: float
	:param Tolerance:
	:type Tolerance: float &
	:rtype: opencascade::handle<Geom2d_Curve>
") Curve2d;
		static opencascade::handle<Geom2d_Curve> Curve2d (const opencascade::handle<Geom_Curve> & C,const Standard_Real First,const Standard_Real Last,const opencascade::handle<Geom_Surface> & S,const Standard_Real UFirst,const Standard_Real ULast,const Standard_Real VFirst,const Standard_Real VLast,Standard_Real &OutValue);
		%feature("compactdefaultargs") Curve2d;
		%feature("autodoc", "	* gives the 2d-curve of a 3d-curve lying on a surface ( uses GeomProjLib_ProjectedCurve ) The 3dCurve is taken between the parametrization range [First, Last] <Tolerance> is used as input if the projection needs an approximation. In this case, the reached tolerance is set in <Tolerance> as output. WARNING : if the projection has failed, this method returns a null Handle.

	:param C:
	:type C: opencascade::handle<Geom_Curve> &
	:param First:
	:type First: float
	:param Last:
	:type Last: float
	:param S:
	:type S: opencascade::handle<Geom_Surface> &
	:param Tolerance:
	:type Tolerance: float &
	:rtype: opencascade::handle<Geom2d_Curve>
") Curve2d;
		static opencascade::handle<Geom2d_Curve> Curve2d (const opencascade::handle<Geom_Curve> & C,const Standard_Real First,const Standard_Real Last,const opencascade::handle<Geom_Surface> & S,Standard_Real &OutValue);
		%feature("compactdefaultargs") Curve2d;
		%feature("autodoc", "	* gives the 2d-curve of a 3d-curve lying on a surface ( uses GeomProjLib_ProjectedCurve ) The 3dCurve is taken between the parametrization range [First, Last] If the projection needs an approximation, Precision::PApproximation() is used. WARNING : if the projection has failed, this method returns a null Handle.

	:param C:
	:type C: opencascade::handle<Geom_Curve> &
	:param First:
	:type First: float
	:param Last:
	:type Last: float
	:param S:
	:type S: opencascade::handle<Geom_Surface> &
	:rtype: opencascade::handle<Geom2d_Curve>
") Curve2d;
		static opencascade::handle<Geom2d_Curve> Curve2d (const opencascade::handle<Geom_Curve> & C,const Standard_Real First,const Standard_Real Last,const opencascade::handle<Geom_Surface> & S);
		%feature("compactdefaultargs") Curve2d;
		%feature("autodoc", "	* gives the 2d-curve of a 3d-curve lying on a surface ( uses GeomProjLib_ProjectedCurve ). If the projection needs an approximation, Precision::PApproximation() is used. WARNING : if the projection has failed, this method returns a null Handle.

	:param C:
	:type C: opencascade::handle<Geom_Curve> &
	:param S:
	:type S: opencascade::handle<Geom_Surface> &
	:rtype: opencascade::handle<Geom2d_Curve>
") Curve2d;
		static opencascade::handle<Geom2d_Curve> Curve2d (const opencascade::handle<Geom_Curve> & C,const opencascade::handle<Geom_Surface> & S);
		%feature("compactdefaultargs") Curve2d;
		%feature("autodoc", "	* gives the 2d-curve of a 3d-curve lying on a surface ( uses GeomProjLib_ProjectedCurve ). If the projection needs an approximation, Precision::PApproximation() is used. WARNING : if the projection has failed, this method returns a null Handle. can expand a little the bounds of surface

	:param C:
	:type C: opencascade::handle<Geom_Curve> &
	:param S:
	:type S: opencascade::handle<Geom_Surface> &
	:param UDeb:
	:type UDeb: float
	:param UFin:
	:type UFin: float
	:param VDeb:
	:type VDeb: float
	:param VFin:
	:type VFin: float
	:rtype: opencascade::handle<Geom2d_Curve>
") Curve2d;
		static opencascade::handle<Geom2d_Curve> Curve2d (const opencascade::handle<Geom_Curve> & C,const opencascade::handle<Geom_Surface> & S,const Standard_Real UDeb,const Standard_Real UFin,const Standard_Real VDeb,const Standard_Real VFin);
		%feature("compactdefaultargs") Curve2d;
		%feature("autodoc", "	* gives the 2d-curve of a 3d-curve lying on a surface ( uses GeomProjLib_ProjectedCurve ). If the projection needs an approximation, Precision::PApproximation() is used. WARNING : if the projection has failed, this method returns a null Handle. can expand a little the bounds of surface

	:param C:
	:type C: opencascade::handle<Geom_Curve> &
	:param S:
	:type S: opencascade::handle<Geom_Surface> &
	:param UDeb:
	:type UDeb: float
	:param UFin:
	:type UFin: float
	:param VDeb:
	:type VDeb: float
	:param VFin:
	:type VFin: float
	:param Tolerance:
	:type Tolerance: float &
	:rtype: opencascade::handle<Geom2d_Curve>
") Curve2d;
		static opencascade::handle<Geom2d_Curve> Curve2d (const opencascade::handle<Geom_Curve> & C,const opencascade::handle<Geom_Surface> & S,const Standard_Real UDeb,const Standard_Real UFin,const Standard_Real VDeb,const Standard_Real VFin,Standard_Real &OutValue);
		%feature("compactdefaultargs") Project;
		%feature("autodoc", "	* Constructs the 3d-curve from the normal projection of the Curve <C> on the surface <S>. WARNING : if the projection has failes returns a null Handle.

	:param C:
	:type C: opencascade::handle<Geom_Curve> &
	:param S:
	:type S: opencascade::handle<Geom_Surface> &
	:rtype: opencascade::handle<Geom_Curve>
") Project;
		static opencascade::handle<Geom_Curve> Project (const opencascade::handle<Geom_Curve> & C,const opencascade::handle<Geom_Surface> & S);
		%feature("compactdefaultargs") ProjectOnPlane;
		%feature("autodoc", "	* Constructs the 3d-curves from the projection of the curve <Curve> on the plane <Plane> along the direction <Dir>. If <KeepParametrization> is true, the parametrization of the Projected Curve <PC> will be the same as the parametrization of the initial curve <C>. It meens: proj(C(u)) = PC(u) for each u. Otherwize, the parametrization may change.

	:param Curve:
	:type Curve: opencascade::handle<Geom_Curve> &
	:param Plane:
	:type Plane: opencascade::handle<Geom_Plane> &
	:param Dir:
	:type Dir: gp_Dir
	:param KeepParametrization:
	:type KeepParametrization: bool
	:rtype: opencascade::handle<Geom_Curve>
") ProjectOnPlane;
		static opencascade::handle<Geom_Curve> ProjectOnPlane (const opencascade::handle<Geom_Curve> & Curve,const opencascade::handle<Geom_Plane> & Plane,const gp_Dir & Dir,const Standard_Boolean KeepParametrization);
};


%extend GeomProjLib {
	%pythoncode {
	__repr__ = _dumps_object
	}
};
/* harray1 class */
/* harray2 class */
/* harray2 class */
