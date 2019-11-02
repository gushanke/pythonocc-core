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

- time : 2019-11-03 11:38:21
- operating system : debian Linux 4.15.0-66-generic
- occt version targeted : 7.4.0
*/

%define LPROPDOCSTRING
"No docstring provided."
%enddef
%module (package="OCC.Core", docstring=LPROPDOCSTRING) LProp

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


%include LProp_headers.i

/* public enums */
enum LProp_Status {
	LProp_Undecided = 0,
	LProp_Undefined = 1,
	LProp_Defined = 2,
	LProp_Computed = 3,
};

enum LProp_CIType {
	LProp_Inflection = 0,
	LProp_MinCur = 1,
	LProp_MaxCur = 2,
};

/* end public enums declaration */

/* templates */
%template(LProp_SequenceOfCIType) NCollection_Sequence <LProp_CIType>;
/* end templates declaration */

/* typedefs */
typedef NCollection_Sequence <LProp_CIType> LProp_SequenceOfCIType;
/* end typedefs declaration */

/* handles */
/* end handles declaration */

%nodefaultctor LProp_AnalyticCurInf;
class LProp_AnalyticCurInf {
	public:
		%feature("compactdefaultargs") LProp_AnalyticCurInf;
		%feature("autodoc", "	:rtype: None
") LProp_AnalyticCurInf;
		 LProp_AnalyticCurInf ();
		%feature("compactdefaultargs") Perform;
		%feature("autodoc", "	:param T:
	:type T: GeomAbs_CurveType
	:param UFirst:
	:type UFirst: float
	:param ULast:
	:type ULast: float
	:param Result:
	:type Result: LProp_CurAndInf &
	:rtype: None
") Perform;
		void Perform (const GeomAbs_CurveType T,const Standard_Real UFirst,const Standard_Real ULast,LProp_CurAndInf & Result);
};


%extend LProp_AnalyticCurInf {
	%pythoncode {
	__repr__ = _dumps_object
	}
};
%nodefaultctor LProp_CurAndInf;
class LProp_CurAndInf {
	public:
		%feature("compactdefaultargs") AddExtCur;
		%feature("autodoc", "	:param Param:
	:type Param: float
	:param IsMin:
	:type IsMin: bool
	:rtype: None
") AddExtCur;
		void AddExtCur (const Standard_Real Param,const Standard_Boolean IsMin);
		%feature("compactdefaultargs") AddInflection;
		%feature("autodoc", "	:param Param:
	:type Param: float
	:rtype: None
") AddInflection;
		void AddInflection (const Standard_Real Param);
		%feature("compactdefaultargs") Clear;
		%feature("autodoc", "	:rtype: None
") Clear;
		void Clear ();
		%feature("compactdefaultargs") IsEmpty;
		%feature("autodoc", "	:rtype: bool
") IsEmpty;
		Standard_Boolean IsEmpty ();
		%feature("compactdefaultargs") LProp_CurAndInf;
		%feature("autodoc", "	:rtype: None
") LProp_CurAndInf;
		 LProp_CurAndInf ();
		%feature("compactdefaultargs") NbPoints;
		%feature("autodoc", "	* Returns the number of points. The Points are stored to increasing parameter.

	:rtype: int
") NbPoints;
		Standard_Integer NbPoints ();
		%feature("compactdefaultargs") Parameter;
		%feature("autodoc", "	* Returns the parameter of the Nth point. raises if N not in the range [1,NbPoints()]

	:param N:
	:type N: int
	:rtype: float
") Parameter;
		Standard_Real Parameter (const Standard_Integer N);
		%feature("compactdefaultargs") Type;
		%feature("autodoc", "	* Returns - MinCur if the Nth parameter corresponds to a minimum of the radius of curvature. - MaxCur if the Nth parameter corresponds to a maximum of the radius of curvature. - Inflection if the parameter corresponds to a point of inflection. raises if N not in the range [1,NbPoints()]

	:param N:
	:type N: int
	:rtype: LProp_CIType
") Type;
		LProp_CIType Type (const Standard_Integer N);
};


%extend LProp_CurAndInf {
	%pythoncode {
	__repr__ = _dumps_object
	}
};
/* harray1 class */
/* harray2 class */
/* harray2 class */
