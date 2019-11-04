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

%define MATDOCSTRING
"No docstring provided."
%enddef
%module (package="OCC.Core", docstring=MATDOCSTRING) MAT

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


%include MAT_headers.i

/* public enums */
enum MAT_Side {
	MAT_Left = 0,
	MAT_Right = 1,
};

/* end public enums declaration */

/* handles */
%wrap_handle(MAT_Arc)
%wrap_handle(MAT_BasicElt)
%wrap_handle(MAT_Bisector)
%wrap_handle(MAT_Edge)
%wrap_handle(MAT_Graph)
%wrap_handle(MAT_ListOfBisector)
%wrap_handle(MAT_ListOfEdge)
%wrap_handle(MAT_Node)
%wrap_handle(MAT_TListNodeOfListOfBisector)
%wrap_handle(MAT_TListNodeOfListOfEdge)
%wrap_handle(MAT_Zone)
/* end handles declaration */

/* templates */
%template(MAT_DataMapOfIntegerArc) NCollection_DataMap <Standard_Integer , opencascade::handle <MAT_Arc>, TColStd_MapIntegerHasher>;
%template(MAT_DataMapOfIntegerBasicElt) NCollection_DataMap <Standard_Integer , opencascade::handle <MAT_BasicElt>, TColStd_MapIntegerHasher>;
%template(MAT_SequenceOfBasicElt) NCollection_Sequence <opencascade::handle <MAT_BasicElt>>;
%template(MAT_DataMapOfIntegerBisector) NCollection_DataMap <Standard_Integer , opencascade::handle <MAT_Bisector>, TColStd_MapIntegerHasher>;
%template(MAT_SequenceOfArc) NCollection_Sequence <opencascade::handle <MAT_Arc>>;
%template(MAT_DataMapOfIntegerNode) NCollection_DataMap <Standard_Integer , opencascade::handle <MAT_Node>, TColStd_MapIntegerHasher>;
/* end templates declaration */

/* typedefs */
typedef NCollection_DataMap <Standard_Integer , opencascade::handle <MAT_Arc>, TColStd_MapIntegerHasher> MAT_DataMapOfIntegerArc;
typedef NCollection_DataMap <Standard_Integer , opencascade::handle <MAT_Arc>, TColStd_MapIntegerHasher>::Iterator MAT_DataMapIteratorOfDataMapOfIntegerArc;
typedef NCollection_DataMap <Standard_Integer , opencascade::handle <MAT_BasicElt>, TColStd_MapIntegerHasher> MAT_DataMapOfIntegerBasicElt;
typedef NCollection_DataMap <Standard_Integer , opencascade::handle <MAT_BasicElt>, TColStd_MapIntegerHasher>::Iterator MAT_DataMapIteratorOfDataMapOfIntegerBasicElt;
typedef NCollection_Sequence <opencascade::handle <MAT_BasicElt>> MAT_SequenceOfBasicElt;
typedef NCollection_DataMap <Standard_Integer , opencascade::handle <MAT_Bisector>, TColStd_MapIntegerHasher> MAT_DataMapOfIntegerBisector;
typedef NCollection_DataMap <Standard_Integer , opencascade::handle <MAT_Bisector>, TColStd_MapIntegerHasher>::Iterator MAT_DataMapIteratorOfDataMapOfIntegerBisector;
typedef NCollection_Sequence <opencascade::handle <MAT_Arc>> MAT_SequenceOfArc;
typedef NCollection_DataMap <Standard_Integer , opencascade::handle <MAT_Node>, TColStd_MapIntegerHasher> MAT_DataMapOfIntegerNode;
typedef NCollection_DataMap <Standard_Integer , opencascade::handle <MAT_Node>, TColStd_MapIntegerHasher>::Iterator MAT_DataMapIteratorOfDataMapOfIntegerNode;
/* end typedefs declaration */

%nodefaultctor MAT_Arc;
class MAT_Arc : public Standard_Transient {
	public:
		%feature("compactdefaultargs") FirstElement;
		%feature("autodoc", "	* Returns one of the BasicElt equidistant from <self>.

	:rtype: opencascade::handle<MAT_BasicElt>
") FirstElement;
		opencascade::handle<MAT_BasicElt> FirstElement ();
		%feature("compactdefaultargs") FirstNode;
		%feature("autodoc", "	* Returns one Node extremity of <self>.

	:rtype: opencascade::handle<MAT_Node>
") FirstNode;
		opencascade::handle<MAT_Node> FirstNode ();
		%feature("compactdefaultargs") GeomIndex;
		%feature("autodoc", "	* Returns the index associated of the geometric representation of <self>.

	:rtype: int
") GeomIndex;
		Standard_Integer GeomIndex ();
		%feature("compactdefaultargs") HasNeighbour;
		%feature("autodoc", "	* Returnst True is there is an arc linked to the Node <aNode> located on the side <aSide> of <self>; if <aNode> is not on <self>

	:param aNode:
	:type aNode: opencascade::handle<MAT_Node> &
	:param aSide:
	:type aSide: MAT_Side
	:rtype: bool
") HasNeighbour;
		Standard_Boolean HasNeighbour (const opencascade::handle<MAT_Node> & aNode,const MAT_Side aSide);
		%feature("compactdefaultargs") Index;
		%feature("autodoc", "	* Returns the index of <self> in Graph.theArcs.

	:rtype: int
") Index;
		Standard_Integer Index ();
		%feature("compactdefaultargs") MAT_Arc;
		%feature("autodoc", "	:param ArcIndex:
	:type ArcIndex: int
	:param GeomIndex:
	:type GeomIndex: int
	:param FirstElement:
	:type FirstElement: opencascade::handle<MAT_BasicElt> &
	:param SecondElement:
	:type SecondElement: opencascade::handle<MAT_BasicElt> &
	:rtype: None
") MAT_Arc;
		 MAT_Arc (const Standard_Integer ArcIndex,const Standard_Integer GeomIndex,const opencascade::handle<MAT_BasicElt> & FirstElement,const opencascade::handle<MAT_BasicElt> & SecondElement);
		%feature("compactdefaultargs") Neighbour;
		%feature("autodoc", "	* Returns the first arc linked to the Node <aNode> located on the side <aSide> of <self>; if HasNeighbour() returns False.

	:param aNode:
	:type aNode: opencascade::handle<MAT_Node> &
	:param aSide:
	:type aSide: MAT_Side
	:rtype: opencascade::handle<MAT_Arc>
") Neighbour;
		opencascade::handle<MAT_Arc> Neighbour (const opencascade::handle<MAT_Node> & aNode,const MAT_Side aSide);
		%feature("compactdefaultargs") SecondElement;
		%feature("autodoc", "	* Returns the other BasicElt equidistant from <self>.

	:rtype: opencascade::handle<MAT_BasicElt>
") SecondElement;
		opencascade::handle<MAT_BasicElt> SecondElement ();
		%feature("compactdefaultargs") SecondNode;
		%feature("autodoc", "	* Returns the other Node extremity of <self>.

	:rtype: opencascade::handle<MAT_Node>
") SecondNode;
		opencascade::handle<MAT_Node> SecondNode ();
		%feature("compactdefaultargs") SetFirstArc;
		%feature("autodoc", "	:param aSide:
	:type aSide: MAT_Side
	:param anArc:
	:type anArc: opencascade::handle<MAT_Arc> &
	:rtype: None
") SetFirstArc;
		void SetFirstArc (const MAT_Side aSide,const opencascade::handle<MAT_Arc> & anArc);
		%feature("compactdefaultargs") SetFirstElement;
		%feature("autodoc", "	:param aBasicElt:
	:type aBasicElt: opencascade::handle<MAT_BasicElt> &
	:rtype: None
") SetFirstElement;
		void SetFirstElement (const opencascade::handle<MAT_BasicElt> & aBasicElt);
		%feature("compactdefaultargs") SetFirstNode;
		%feature("autodoc", "	:param aNode:
	:type aNode: opencascade::handle<MAT_Node> &
	:rtype: None
") SetFirstNode;
		void SetFirstNode (const opencascade::handle<MAT_Node> & aNode);
		%feature("compactdefaultargs") SetGeomIndex;
		%feature("autodoc", "	:param anInteger:
	:type anInteger: int
	:rtype: None
") SetGeomIndex;
		void SetGeomIndex (const Standard_Integer anInteger);
		%feature("compactdefaultargs") SetIndex;
		%feature("autodoc", "	:param anInteger:
	:type anInteger: int
	:rtype: None
") SetIndex;
		void SetIndex (const Standard_Integer anInteger);
		%feature("compactdefaultargs") SetNeighbour;
		%feature("autodoc", "	:param aSide:
	:type aSide: MAT_Side
	:param aNode:
	:type aNode: opencascade::handle<MAT_Node> &
	:param anArc:
	:type anArc: opencascade::handle<MAT_Arc> &
	:rtype: None
") SetNeighbour;
		void SetNeighbour (const MAT_Side aSide,const opencascade::handle<MAT_Node> & aNode,const opencascade::handle<MAT_Arc> & anArc);
		%feature("compactdefaultargs") SetSecondArc;
		%feature("autodoc", "	:param aSide:
	:type aSide: MAT_Side
	:param anArc:
	:type anArc: opencascade::handle<MAT_Arc> &
	:rtype: None
") SetSecondArc;
		void SetSecondArc (const MAT_Side aSide,const opencascade::handle<MAT_Arc> & anArc);
		%feature("compactdefaultargs") SetSecondElement;
		%feature("autodoc", "	:param aBasicElt:
	:type aBasicElt: opencascade::handle<MAT_BasicElt> &
	:rtype: None
") SetSecondElement;
		void SetSecondElement (const opencascade::handle<MAT_BasicElt> & aBasicElt);
		%feature("compactdefaultargs") SetSecondNode;
		%feature("autodoc", "	:param aNode:
	:type aNode: opencascade::handle<MAT_Node> &
	:rtype: None
") SetSecondNode;
		void SetSecondNode (const opencascade::handle<MAT_Node> & aNode);
		%feature("compactdefaultargs") TheOtherNode;
		%feature("autodoc", "	* an Arc has two Node, if <aNode> egal one Returns the other. //! if <aNode> is not oh <self>

	:param aNode:
	:type aNode: opencascade::handle<MAT_Node> &
	:rtype: opencascade::handle<MAT_Node>
") TheOtherNode;
		opencascade::handle<MAT_Node> TheOtherNode (const opencascade::handle<MAT_Node> & aNode);
};


%make_alias(MAT_Arc)

%extend MAT_Arc {
	%pythoncode {
	__repr__ = _dumps_object
	}
};
%nodefaultctor MAT_BasicElt;
class MAT_BasicElt : public Standard_Transient {
	public:
		%feature("compactdefaultargs") EndArc;
		%feature("autodoc", "	* Return <endArcLeft> or <endArcRight> corresponding to <aSide>.

	:rtype: opencascade::handle<MAT_Arc>
") EndArc;
		opencascade::handle<MAT_Arc> EndArc ();
		%feature("compactdefaultargs") GeomIndex;
		%feature("autodoc", "	* Return the <GeomIndex> of <self>.

	:rtype: int
") GeomIndex;
		Standard_Integer GeomIndex ();
		%feature("compactdefaultargs") Index;
		%feature("autodoc", "	* Return the <index> of <self> in Graph.TheBasicElts.

	:rtype: int
") Index;
		Standard_Integer Index ();
		%feature("compactdefaultargs") MAT_BasicElt;
		%feature("autodoc", "	* Constructor, <anInteger> is the <index> of <self>.

	:param anInteger:
	:type anInteger: int
	:rtype: None
") MAT_BasicElt;
		 MAT_BasicElt (const Standard_Integer anInteger);
		%feature("compactdefaultargs") SetEndArc;
		%feature("autodoc", "	:param anArc:
	:type anArc: opencascade::handle<MAT_Arc> &
	:rtype: None
") SetEndArc;
		void SetEndArc (const opencascade::handle<MAT_Arc> & anArc);
		%feature("compactdefaultargs") SetGeomIndex;
		%feature("autodoc", "	:param anInteger:
	:type anInteger: int
	:rtype: None
") SetGeomIndex;
		void SetGeomIndex (const Standard_Integer anInteger);
		%feature("compactdefaultargs") SetIndex;
		%feature("autodoc", "	:param anInteger:
	:type anInteger: int
	:rtype: None
") SetIndex;
		void SetIndex (const Standard_Integer anInteger);
		%feature("compactdefaultargs") SetStartArc;
		%feature("autodoc", "	:param anArc:
	:type anArc: opencascade::handle<MAT_Arc> &
	:rtype: None
") SetStartArc;
		void SetStartArc (const opencascade::handle<MAT_Arc> & anArc);
		%feature("compactdefaultargs") StartArc;
		%feature("autodoc", "	* Return <startArcLeft> or <startArcRight> corresponding to <aSide>.

	:rtype: opencascade::handle<MAT_Arc>
") StartArc;
		opencascade::handle<MAT_Arc> StartArc ();
};


%make_alias(MAT_BasicElt)

%extend MAT_BasicElt {
	%pythoncode {
	__repr__ = _dumps_object
	}
};
%nodefaultctor MAT_Bisector;
class MAT_Bisector : public Standard_Transient {
	public:
		%feature("compactdefaultargs") AddBisector;
		%feature("autodoc", "	:param abisector:
	:type abisector: opencascade::handle<MAT_Bisector> &
	:rtype: None
") AddBisector;
		void AddBisector (const opencascade::handle<MAT_Bisector> & abisector);
		%feature("compactdefaultargs") BisectorNumber;
		%feature("autodoc", "	:param anumber:
	:type anumber: int
	:rtype: None
") BisectorNumber;
		void BisectorNumber (const Standard_Integer anumber);
		%feature("compactdefaultargs") BisectorNumber;
		%feature("autodoc", "	:rtype: int
") BisectorNumber;
		Standard_Integer BisectorNumber ();
		%feature("compactdefaultargs") DistIssuePoint;
		%feature("autodoc", "	:param areal:
	:type areal: float
	:rtype: None
") DistIssuePoint;
		void DistIssuePoint (const Standard_Real areal);
		%feature("compactdefaultargs") DistIssuePoint;
		%feature("autodoc", "	:rtype: float
") DistIssuePoint;
		Standard_Real DistIssuePoint ();
		%feature("compactdefaultargs") Dump;
		%feature("autodoc", "	:param ashift:
	:type ashift: int
	:param alevel:
	:type alevel: int
	:rtype: None
") Dump;
		void Dump (const Standard_Integer ashift,const Standard_Integer alevel);
		%feature("compactdefaultargs") EndPoint;
		%feature("autodoc", "	:param apoint:
	:type apoint: int
	:rtype: None
") EndPoint;
		void EndPoint (const Standard_Integer apoint);
		%feature("compactdefaultargs") EndPoint;
		%feature("autodoc", "	:rtype: int
") EndPoint;
		Standard_Integer EndPoint ();
		%feature("compactdefaultargs") FirstBisector;
		%feature("autodoc", "	:rtype: opencascade::handle<MAT_Bisector>
") FirstBisector;
		opencascade::handle<MAT_Bisector> FirstBisector ();
		%feature("compactdefaultargs") FirstEdge;
		%feature("autodoc", "	:param anedge:
	:type anedge: opencascade::handle<MAT_Edge> &
	:rtype: None
") FirstEdge;
		void FirstEdge (const opencascade::handle<MAT_Edge> & anedge);
		%feature("compactdefaultargs") FirstEdge;
		%feature("autodoc", "	:rtype: opencascade::handle<MAT_Edge>
") FirstEdge;
		opencascade::handle<MAT_Edge> FirstEdge ();
		%feature("compactdefaultargs") FirstParameter;
		%feature("autodoc", "	:param aparameter:
	:type aparameter: float
	:rtype: None
") FirstParameter;
		void FirstParameter (const Standard_Real aparameter);
		%feature("compactdefaultargs") FirstParameter;
		%feature("autodoc", "	:rtype: float
") FirstParameter;
		Standard_Real FirstParameter ();
		%feature("compactdefaultargs") FirstVector;
		%feature("autodoc", "	:param avector:
	:type avector: int
	:rtype: None
") FirstVector;
		void FirstVector (const Standard_Integer avector);
		%feature("compactdefaultargs") FirstVector;
		%feature("autodoc", "	:rtype: int
") FirstVector;
		Standard_Integer FirstVector ();
		%feature("compactdefaultargs") IndexNumber;
		%feature("autodoc", "	:param anumber:
	:type anumber: int
	:rtype: None
") IndexNumber;
		void IndexNumber (const Standard_Integer anumber);
		%feature("compactdefaultargs") IndexNumber;
		%feature("autodoc", "	:rtype: int
") IndexNumber;
		Standard_Integer IndexNumber ();
		%feature("compactdefaultargs") IssuePoint;
		%feature("autodoc", "	:param apoint:
	:type apoint: int
	:rtype: None
") IssuePoint;
		void IssuePoint (const Standard_Integer apoint);
		%feature("compactdefaultargs") IssuePoint;
		%feature("autodoc", "	:rtype: int
") IssuePoint;
		Standard_Integer IssuePoint ();
		%feature("compactdefaultargs") LastBisector;
		%feature("autodoc", "	:rtype: opencascade::handle<MAT_Bisector>
") LastBisector;
		opencascade::handle<MAT_Bisector> LastBisector ();
		%feature("compactdefaultargs") List;
		%feature("autodoc", "	:rtype: opencascade::handle<MAT_ListOfBisector>
") List;
		opencascade::handle<MAT_ListOfBisector> List ();
		%feature("compactdefaultargs") MAT_Bisector;
		%feature("autodoc", "	:rtype: None
") MAT_Bisector;
		 MAT_Bisector ();
		%feature("compactdefaultargs") SecondEdge;
		%feature("autodoc", "	:param anedge:
	:type anedge: opencascade::handle<MAT_Edge> &
	:rtype: None
") SecondEdge;
		void SecondEdge (const opencascade::handle<MAT_Edge> & anedge);
		%feature("compactdefaultargs") SecondEdge;
		%feature("autodoc", "	:rtype: opencascade::handle<MAT_Edge>
") SecondEdge;
		opencascade::handle<MAT_Edge> SecondEdge ();
		%feature("compactdefaultargs") SecondParameter;
		%feature("autodoc", "	:param aparameter:
	:type aparameter: float
	:rtype: None
") SecondParameter;
		void SecondParameter (const Standard_Real aparameter);
		%feature("compactdefaultargs") SecondParameter;
		%feature("autodoc", "	:rtype: float
") SecondParameter;
		Standard_Real SecondParameter ();
		%feature("compactdefaultargs") SecondVector;
		%feature("autodoc", "	:param avector:
	:type avector: int
	:rtype: None
") SecondVector;
		void SecondVector (const Standard_Integer avector);
		%feature("compactdefaultargs") SecondVector;
		%feature("autodoc", "	:rtype: int
") SecondVector;
		Standard_Integer SecondVector ();
		%feature("compactdefaultargs") Sense;
		%feature("autodoc", "	:param asense:
	:type asense: float
	:rtype: None
") Sense;
		void Sense (const Standard_Real asense);
		%feature("compactdefaultargs") Sense;
		%feature("autodoc", "	:rtype: float
") Sense;
		Standard_Real Sense ();
};


%make_alias(MAT_Bisector)

%extend MAT_Bisector {
	%pythoncode {
	__repr__ = _dumps_object
	}
};
%nodefaultctor MAT_Edge;
class MAT_Edge : public Standard_Transient {
	public:
		%feature("compactdefaultargs") Distance;
		%feature("autodoc", "	:param adistance:
	:type adistance: float
	:rtype: None
") Distance;
		void Distance (const Standard_Real adistance);
		%feature("compactdefaultargs") Distance;
		%feature("autodoc", "	:rtype: float
") Distance;
		Standard_Real Distance ();
		%feature("compactdefaultargs") Dump;
		%feature("autodoc", "	:param ashift:
	:type ashift: int
	:param alevel:
	:type alevel: int
	:rtype: None
") Dump;
		void Dump (const Standard_Integer ashift,const Standard_Integer alevel);
		%feature("compactdefaultargs") EdgeNumber;
		%feature("autodoc", "	:param anumber:
	:type anumber: int
	:rtype: None
") EdgeNumber;
		void EdgeNumber (const Standard_Integer anumber);
		%feature("compactdefaultargs") EdgeNumber;
		%feature("autodoc", "	:rtype: int
") EdgeNumber;
		Standard_Integer EdgeNumber ();
		%feature("compactdefaultargs") FirstBisector;
		%feature("autodoc", "	:param abisector:
	:type abisector: opencascade::handle<MAT_Bisector> &
	:rtype: None
") FirstBisector;
		void FirstBisector (const opencascade::handle<MAT_Bisector> & abisector);
		%feature("compactdefaultargs") FirstBisector;
		%feature("autodoc", "	:rtype: opencascade::handle<MAT_Bisector>
") FirstBisector;
		opencascade::handle<MAT_Bisector> FirstBisector ();
		%feature("compactdefaultargs") IntersectionPoint;
		%feature("autodoc", "	:param apoint:
	:type apoint: int
	:rtype: None
") IntersectionPoint;
		void IntersectionPoint (const Standard_Integer apoint);
		%feature("compactdefaultargs") IntersectionPoint;
		%feature("autodoc", "	:rtype: int
") IntersectionPoint;
		Standard_Integer IntersectionPoint ();
		%feature("compactdefaultargs") MAT_Edge;
		%feature("autodoc", "	:rtype: None
") MAT_Edge;
		 MAT_Edge ();
		%feature("compactdefaultargs") SecondBisector;
		%feature("autodoc", "	:param abisector:
	:type abisector: opencascade::handle<MAT_Bisector> &
	:rtype: None
") SecondBisector;
		void SecondBisector (const opencascade::handle<MAT_Bisector> & abisector);
		%feature("compactdefaultargs") SecondBisector;
		%feature("autodoc", "	:rtype: opencascade::handle<MAT_Bisector>
") SecondBisector;
		opencascade::handle<MAT_Bisector> SecondBisector ();
};


%make_alias(MAT_Edge)

%extend MAT_Edge {
	%pythoncode {
	__repr__ = _dumps_object
	}
};
%nodefaultctor MAT_Graph;
class MAT_Graph : public Standard_Transient {
	public:
		%feature("compactdefaultargs") Arc;
		%feature("autodoc", "	* Return the Arc of index <Index> in <theArcs>.

	:param Index:
	:type Index: int
	:rtype: opencascade::handle<MAT_Arc>
") Arc;
		opencascade::handle<MAT_Arc> Arc (const Standard_Integer Index);
		%feature("compactdefaultargs") BasicElt;
		%feature("autodoc", "	* Return the BasicElt of index <Index> in <theBasicElts>.

	:param Index:
	:type Index: int
	:rtype: opencascade::handle<MAT_BasicElt>
") BasicElt;
		opencascade::handle<MAT_BasicElt> BasicElt (const Standard_Integer Index);
		%feature("compactdefaultargs") ChangeBasicElt;
		%feature("autodoc", "	:param Index:
	:type Index: int
	:rtype: opencascade::handle<MAT_BasicElt>
") ChangeBasicElt;
		opencascade::handle<MAT_BasicElt> ChangeBasicElt (const Standard_Integer Index);
		%feature("compactdefaultargs") ChangeBasicElts;
		%feature("autodoc", "	:param NewMap:
	:type NewMap: MAT_DataMapOfIntegerBasicElt &
	:rtype: None
") ChangeBasicElts;
		void ChangeBasicElts (const MAT_DataMapOfIntegerBasicElt & NewMap);
		%feature("compactdefaultargs") CompactArcs;
		%feature("autodoc", "	:rtype: None
") CompactArcs;
		void CompactArcs ();
		%feature("compactdefaultargs") CompactNodes;
		%feature("autodoc", "	:rtype: None
") CompactNodes;
		void CompactNodes ();
		%feature("compactdefaultargs") FusionOfBasicElts;
		%feature("autodoc", "	* Merge two BasicElts. The End of the BasicElt Elt1 of IndexElt1 becomes The End of the BasicElt Elt2 of IndexElt2. Elt2 is replaced in the arcs by Elt1, Elt2 is eliminated. //! <MergeArc1> is True if the fusion of the BasicElts => a fusion of two Arcs which separated the same elements. In this case <GeomIndexArc1> and <GeomIndexArc2> are the Geometric Index of this arcs. //! If the BasicElt corresponds to a close line , the StartArc and the EndArc of Elt1 can separate the same elements . In this case there is a fusion of this arcs, <MergeArc2> is true and <GeomIndexArc3> and <GeomIndexArc4> are the Geometric Index of this arcs.

	:param IndexElt1:
	:type IndexElt1: int
	:param IndexElt2:
	:type IndexElt2: int
	:param MergeArc1:
	:type MergeArc1: bool
	:param GeomIndexArc1:
	:type GeomIndexArc1: int &
	:param GeomIndexArc2:
	:type GeomIndexArc2: int &
	:param MergeArc2:
	:type MergeArc2: bool
	:param GeomIndexArc3:
	:type GeomIndexArc3: int &
	:param GeomIndexArc4:
	:type GeomIndexArc4: int &
	:rtype: None
") FusionOfBasicElts;
		void FusionOfBasicElts (const Standard_Integer IndexElt1,const Standard_Integer IndexElt2,Standard_Boolean &OutValue,Standard_Integer &OutValue,Standard_Integer &OutValue,Standard_Boolean &OutValue,Standard_Integer &OutValue,Standard_Integer &OutValue);
		%feature("compactdefaultargs") MAT_Graph;
		%feature("autodoc", "	* Empty constructor.

	:rtype: None
") MAT_Graph;
		 MAT_Graph ();
		%feature("compactdefaultargs") Node;
		%feature("autodoc", "	* Return the Node of index <Index> in <theNodes>.

	:param Index:
	:type Index: int
	:rtype: opencascade::handle<MAT_Node>
") Node;
		opencascade::handle<MAT_Node> Node (const Standard_Integer Index);
		%feature("compactdefaultargs") NumberOfArcs;
		%feature("autodoc", "	* Return the number of arcs of <self>.

	:rtype: int
") NumberOfArcs;
		Standard_Integer NumberOfArcs ();
		%feature("compactdefaultargs") NumberOfBasicElts;
		%feature("autodoc", "	* Return the number of basic elements of <self>.

	:rtype: int
") NumberOfBasicElts;
		Standard_Integer NumberOfBasicElts ();
		%feature("compactdefaultargs") NumberOfInfiniteNodes;
		%feature("autodoc", "	* Return the number of infinites nodes of <self>.

	:rtype: int
") NumberOfInfiniteNodes;
		Standard_Integer NumberOfInfiniteNodes ();
		%feature("compactdefaultargs") NumberOfNodes;
		%feature("autodoc", "	* Return the number of nodes of <self>.

	:rtype: int
") NumberOfNodes;
		Standard_Integer NumberOfNodes ();
		%feature("compactdefaultargs") Perform;
		%feature("autodoc", "	* Construct <self> from the result of the method <CreateMat> of the class <MAT> from <MAT>. //! <SemiInfinite> : if some bisector are infinites. <TheRoots> : Set of the bisectors. <NbBasicElts> : Number of Basic Elements. <NbArcs> : Number of Arcs = Number of Bisectors.

	:param SemiInfinite:
	:type SemiInfinite: bool
	:param TheRoots:
	:type TheRoots: opencascade::handle<MAT_ListOfBisector> &
	:param NbBasicElts:
	:type NbBasicElts: int
	:param NbArcs:
	:type NbArcs: int
	:rtype: None
") Perform;
		void Perform (const Standard_Boolean SemiInfinite,const opencascade::handle<MAT_ListOfBisector> & TheRoots,const Standard_Integer NbBasicElts,const Standard_Integer NbArcs);
};


%make_alias(MAT_Graph)

%extend MAT_Graph {
	%pythoncode {
	__repr__ = _dumps_object
	}
};
%nodefaultctor MAT_ListOfBisector;
class MAT_ListOfBisector : public Standard_Transient {
	public:
		%feature("compactdefaultargs") BackAdd;
		%feature("autodoc", "	:param anitem:
	:type anitem: opencascade::handle<MAT_Bisector> &
	:rtype: None
") BackAdd;
		void BackAdd (const opencascade::handle<MAT_Bisector> & anitem);
		%feature("compactdefaultargs") Brackets;
		%feature("autodoc", "	:param anindex:
	:type anindex: int
	:rtype: opencascade::handle<MAT_Bisector>
") Brackets;
		opencascade::handle<MAT_Bisector> Brackets (const Standard_Integer anindex);
		%feature("compactdefaultargs") Current;
		%feature("autodoc", "	:rtype: opencascade::handle<MAT_Bisector>
") Current;
		opencascade::handle<MAT_Bisector> Current ();
		%feature("compactdefaultargs") Current;
		%feature("autodoc", "	:param anitem:
	:type anitem: opencascade::handle<MAT_Bisector> &
	:rtype: None
") Current;
		void Current (const opencascade::handle<MAT_Bisector> & anitem);
		%feature("compactdefaultargs") Dump;
		%feature("autodoc", "	:param ashift:
	:type ashift: int
	:param alevel:
	:type alevel: int
	:rtype: None
") Dump;
		void Dump (const Standard_Integer ashift,const Standard_Integer alevel);
		%feature("compactdefaultargs") First;
		%feature("autodoc", "	:rtype: None
") First;
		void First ();
		%feature("compactdefaultargs") FirstItem;
		%feature("autodoc", "	:rtype: opencascade::handle<MAT_Bisector>
") FirstItem;
		opencascade::handle<MAT_Bisector> FirstItem ();
		%feature("compactdefaultargs") FrontAdd;
		%feature("autodoc", "	:param anitem:
	:type anitem: opencascade::handle<MAT_Bisector> &
	:rtype: None
") FrontAdd;
		void FrontAdd (const opencascade::handle<MAT_Bisector> & anitem);
		%feature("compactdefaultargs") Index;
		%feature("autodoc", "	:rtype: int
") Index;
		Standard_Integer Index ();
		%feature("compactdefaultargs") Init;
		%feature("autodoc", "	:param aniten:
	:type aniten: opencascade::handle<MAT_Bisector> &
	:rtype: None
") Init;
		void Init (const opencascade::handle<MAT_Bisector> & aniten);
		%feature("compactdefaultargs") IsEmpty;
		%feature("autodoc", "	:rtype: bool
") IsEmpty;
		Standard_Boolean IsEmpty ();
		%feature("compactdefaultargs") Last;
		%feature("autodoc", "	:rtype: None
") Last;
		void Last ();
		%feature("compactdefaultargs") LastItem;
		%feature("autodoc", "	:rtype: opencascade::handle<MAT_Bisector>
") LastItem;
		opencascade::handle<MAT_Bisector> LastItem ();
		%feature("compactdefaultargs") LinkAfter;
		%feature("autodoc", "	:param anitem:
	:type anitem: opencascade::handle<MAT_Bisector> &
	:rtype: None
") LinkAfter;
		void LinkAfter (const opencascade::handle<MAT_Bisector> & anitem);
		%feature("compactdefaultargs") LinkBefore;
		%feature("autodoc", "	:param anitem:
	:type anitem: opencascade::handle<MAT_Bisector> &
	:rtype: None
") LinkBefore;
		void LinkBefore (const opencascade::handle<MAT_Bisector> & anitem);
		%feature("compactdefaultargs") Loop;
		%feature("autodoc", "	:rtype: None
") Loop;
		void Loop ();
		%feature("compactdefaultargs") MAT_ListOfBisector;
		%feature("autodoc", "	:rtype: None
") MAT_ListOfBisector;
		 MAT_ListOfBisector ();
		%feature("compactdefaultargs") More;
		%feature("autodoc", "	:rtype: bool
") More;
		Standard_Boolean More ();
		%feature("compactdefaultargs") Next;
		%feature("autodoc", "	:rtype: None
") Next;
		void Next ();
		%feature("compactdefaultargs") NextItem;
		%feature("autodoc", "	:rtype: opencascade::handle<MAT_Bisector>
") NextItem;
		opencascade::handle<MAT_Bisector> NextItem ();
		%feature("compactdefaultargs") Number;
		%feature("autodoc", "	:rtype: int
") Number;
		Standard_Integer Number ();
		%feature("compactdefaultargs") Permute;
		%feature("autodoc", "	:rtype: None
") Permute;
		void Permute ();
		%feature("compactdefaultargs") Previous;
		%feature("autodoc", "	:rtype: None
") Previous;
		void Previous ();
		%feature("compactdefaultargs") PreviousItem;
		%feature("autodoc", "	:rtype: opencascade::handle<MAT_Bisector>
") PreviousItem;
		opencascade::handle<MAT_Bisector> PreviousItem ();
		%feature("compactdefaultargs") Unlink;
		%feature("autodoc", "	:rtype: None
") Unlink;
		void Unlink ();
};


%make_alias(MAT_ListOfBisector)

%extend MAT_ListOfBisector {
	%pythoncode {
	__repr__ = _dumps_object
	}
};
%nodefaultctor MAT_ListOfEdge;
class MAT_ListOfEdge : public Standard_Transient {
	public:
		%feature("compactdefaultargs") BackAdd;
		%feature("autodoc", "	:param anitem:
	:type anitem: opencascade::handle<MAT_Edge> &
	:rtype: None
") BackAdd;
		void BackAdd (const opencascade::handle<MAT_Edge> & anitem);
		%feature("compactdefaultargs") Brackets;
		%feature("autodoc", "	:param anindex:
	:type anindex: int
	:rtype: opencascade::handle<MAT_Edge>
") Brackets;
		opencascade::handle<MAT_Edge> Brackets (const Standard_Integer anindex);
		%feature("compactdefaultargs") Current;
		%feature("autodoc", "	:rtype: opencascade::handle<MAT_Edge>
") Current;
		opencascade::handle<MAT_Edge> Current ();
		%feature("compactdefaultargs") Current;
		%feature("autodoc", "	:param anitem:
	:type anitem: opencascade::handle<MAT_Edge> &
	:rtype: None
") Current;
		void Current (const opencascade::handle<MAT_Edge> & anitem);
		%feature("compactdefaultargs") Dump;
		%feature("autodoc", "	:param ashift:
	:type ashift: int
	:param alevel:
	:type alevel: int
	:rtype: None
") Dump;
		void Dump (const Standard_Integer ashift,const Standard_Integer alevel);
		%feature("compactdefaultargs") First;
		%feature("autodoc", "	:rtype: None
") First;
		void First ();
		%feature("compactdefaultargs") FirstItem;
		%feature("autodoc", "	:rtype: opencascade::handle<MAT_Edge>
") FirstItem;
		opencascade::handle<MAT_Edge> FirstItem ();
		%feature("compactdefaultargs") FrontAdd;
		%feature("autodoc", "	:param anitem:
	:type anitem: opencascade::handle<MAT_Edge> &
	:rtype: None
") FrontAdd;
		void FrontAdd (const opencascade::handle<MAT_Edge> & anitem);
		%feature("compactdefaultargs") Index;
		%feature("autodoc", "	:rtype: int
") Index;
		Standard_Integer Index ();
		%feature("compactdefaultargs") Init;
		%feature("autodoc", "	:param aniten:
	:type aniten: opencascade::handle<MAT_Edge> &
	:rtype: None
") Init;
		void Init (const opencascade::handle<MAT_Edge> & aniten);
		%feature("compactdefaultargs") IsEmpty;
		%feature("autodoc", "	:rtype: bool
") IsEmpty;
		Standard_Boolean IsEmpty ();
		%feature("compactdefaultargs") Last;
		%feature("autodoc", "	:rtype: None
") Last;
		void Last ();
		%feature("compactdefaultargs") LastItem;
		%feature("autodoc", "	:rtype: opencascade::handle<MAT_Edge>
") LastItem;
		opencascade::handle<MAT_Edge> LastItem ();
		%feature("compactdefaultargs") LinkAfter;
		%feature("autodoc", "	:param anitem:
	:type anitem: opencascade::handle<MAT_Edge> &
	:rtype: None
") LinkAfter;
		void LinkAfter (const opencascade::handle<MAT_Edge> & anitem);
		%feature("compactdefaultargs") LinkBefore;
		%feature("autodoc", "	:param anitem:
	:type anitem: opencascade::handle<MAT_Edge> &
	:rtype: None
") LinkBefore;
		void LinkBefore (const opencascade::handle<MAT_Edge> & anitem);
		%feature("compactdefaultargs") Loop;
		%feature("autodoc", "	:rtype: None
") Loop;
		void Loop ();
		%feature("compactdefaultargs") MAT_ListOfEdge;
		%feature("autodoc", "	:rtype: None
") MAT_ListOfEdge;
		 MAT_ListOfEdge ();
		%feature("compactdefaultargs") More;
		%feature("autodoc", "	:rtype: bool
") More;
		Standard_Boolean More ();
		%feature("compactdefaultargs") Next;
		%feature("autodoc", "	:rtype: None
") Next;
		void Next ();
		%feature("compactdefaultargs") NextItem;
		%feature("autodoc", "	:rtype: opencascade::handle<MAT_Edge>
") NextItem;
		opencascade::handle<MAT_Edge> NextItem ();
		%feature("compactdefaultargs") Number;
		%feature("autodoc", "	:rtype: int
") Number;
		Standard_Integer Number ();
		%feature("compactdefaultargs") Permute;
		%feature("autodoc", "	:rtype: None
") Permute;
		void Permute ();
		%feature("compactdefaultargs") Previous;
		%feature("autodoc", "	:rtype: None
") Previous;
		void Previous ();
		%feature("compactdefaultargs") PreviousItem;
		%feature("autodoc", "	:rtype: opencascade::handle<MAT_Edge>
") PreviousItem;
		opencascade::handle<MAT_Edge> PreviousItem ();
		%feature("compactdefaultargs") Unlink;
		%feature("autodoc", "	:rtype: None
") Unlink;
		void Unlink ();
};


%make_alias(MAT_ListOfEdge)

%extend MAT_ListOfEdge {
	%pythoncode {
	__repr__ = _dumps_object
	}
};
%nodefaultctor MAT_Node;
class MAT_Node : public Standard_Transient {
	public:
		%feature("compactdefaultargs") Distance;
		%feature("autodoc", "	:rtype: float
") Distance;
		Standard_Real Distance ();
		%feature("compactdefaultargs") GeomIndex;
		%feature("autodoc", "	* Returns the index associated of the geometric representation of <self>.

	:rtype: int
") GeomIndex;
		Standard_Integer GeomIndex ();
		%feature("compactdefaultargs") Index;
		%feature("autodoc", "	* Returns the index associated of the node

	:rtype: int
") Index;
		Standard_Integer Index ();
		%feature("compactdefaultargs") Infinite;
		%feature("autodoc", "	* Returns True if the distance of <self> is Infinite

	:rtype: bool
") Infinite;
		Standard_Boolean Infinite ();
		%feature("compactdefaultargs") LinkedArcs;
		%feature("autodoc", "	* Returns in <S> the Arcs linked to <self>.

	:param S:
	:type S: MAT_SequenceOfArc &
	:rtype: None
") LinkedArcs;
		void LinkedArcs (MAT_SequenceOfArc & S);
		%feature("compactdefaultargs") MAT_Node;
		%feature("autodoc", "	:param GeomIndex:
	:type GeomIndex: int
	:param LinkedArc:
	:type LinkedArc: opencascade::handle<MAT_Arc> &
	:param Distance:
	:type Distance: float
	:rtype: None
") MAT_Node;
		 MAT_Node (const Standard_Integer GeomIndex,const opencascade::handle<MAT_Arc> & LinkedArc,const Standard_Real Distance);
		%feature("compactdefaultargs") NearElts;
		%feature("autodoc", "	* Returns in <S> the BasicElts equidistant to <self>.

	:param S:
	:type S: MAT_SequenceOfBasicElt &
	:rtype: None
") NearElts;
		void NearElts (MAT_SequenceOfBasicElt & S);
		%feature("compactdefaultargs") OnBasicElt;
		%feature("autodoc", "	* Returns True if <self> belongs to the figure.

	:rtype: bool
") OnBasicElt;
		Standard_Boolean OnBasicElt ();
		%feature("compactdefaultargs") PendingNode;
		%feature("autodoc", "	* Returns True if <self> is a pending Node. (ie : the number of Arc Linked = 1)

	:rtype: bool
") PendingNode;
		Standard_Boolean PendingNode ();
		%feature("compactdefaultargs") SetIndex;
		%feature("autodoc", "	* Set the index associated of the node

	:param anIndex:
	:type anIndex: int
	:rtype: None
") SetIndex;
		void SetIndex (const Standard_Integer anIndex);
		%feature("compactdefaultargs") SetLinkedArc;
		%feature("autodoc", "	:param anArc:
	:type anArc: opencascade::handle<MAT_Arc> &
	:rtype: None
") SetLinkedArc;
		void SetLinkedArc (const opencascade::handle<MAT_Arc> & anArc);
};


%make_alias(MAT_Node)

%extend MAT_Node {
	%pythoncode {
	__repr__ = _dumps_object
	}
};
%nodefaultctor MAT_TListNodeOfListOfBisector;
class MAT_TListNodeOfListOfBisector : public Standard_Transient {
	public:
		%feature("compactdefaultargs") Dummy;
		%feature("autodoc", "	:rtype: None
") Dummy;
		void Dummy ();
		%feature("compactdefaultargs") GetItem;
		%feature("autodoc", "	:rtype: opencascade::handle<MAT_Bisector>
") GetItem;
		opencascade::handle<MAT_Bisector> GetItem ();
		%feature("compactdefaultargs") MAT_TListNodeOfListOfBisector;
		%feature("autodoc", "	:rtype: None
") MAT_TListNodeOfListOfBisector;
		 MAT_TListNodeOfListOfBisector ();
		%feature("compactdefaultargs") MAT_TListNodeOfListOfBisector;
		%feature("autodoc", "	:param anitem:
	:type anitem: opencascade::handle<MAT_Bisector> &
	:rtype: None
") MAT_TListNodeOfListOfBisector;
		 MAT_TListNodeOfListOfBisector (const opencascade::handle<MAT_Bisector> & anitem);
		%feature("compactdefaultargs") Next;
		%feature("autodoc", "	:rtype: opencascade::handle<MAT_TListNodeOfListOfBisector>
") Next;
		opencascade::handle<MAT_TListNodeOfListOfBisector> Next ();
		%feature("compactdefaultargs") Next;
		%feature("autodoc", "	:param atlistnode:
	:type atlistnode: opencascade::handle<MAT_TListNodeOfListOfBisector> &
	:rtype: None
") Next;
		void Next (const opencascade::handle<MAT_TListNodeOfListOfBisector> & atlistnode);
		%feature("compactdefaultargs") Previous;
		%feature("autodoc", "	:rtype: opencascade::handle<MAT_TListNodeOfListOfBisector>
") Previous;
		opencascade::handle<MAT_TListNodeOfListOfBisector> Previous ();
		%feature("compactdefaultargs") Previous;
		%feature("autodoc", "	:param atlistnode:
	:type atlistnode: opencascade::handle<MAT_TListNodeOfListOfBisector> &
	:rtype: None
") Previous;
		void Previous (const opencascade::handle<MAT_TListNodeOfListOfBisector> & atlistnode);
		%feature("compactdefaultargs") SetItem;
		%feature("autodoc", "	:param anitem:
	:type anitem: opencascade::handle<MAT_Bisector> &
	:rtype: None
") SetItem;
		void SetItem (const opencascade::handle<MAT_Bisector> & anitem);
};


%make_alias(MAT_TListNodeOfListOfBisector)

%extend MAT_TListNodeOfListOfBisector {
	%pythoncode {
	__repr__ = _dumps_object
	}
};
%nodefaultctor MAT_TListNodeOfListOfEdge;
class MAT_TListNodeOfListOfEdge : public Standard_Transient {
	public:
		%feature("compactdefaultargs") Dummy;
		%feature("autodoc", "	:rtype: None
") Dummy;
		void Dummy ();
		%feature("compactdefaultargs") GetItem;
		%feature("autodoc", "	:rtype: opencascade::handle<MAT_Edge>
") GetItem;
		opencascade::handle<MAT_Edge> GetItem ();
		%feature("compactdefaultargs") MAT_TListNodeOfListOfEdge;
		%feature("autodoc", "	:rtype: None
") MAT_TListNodeOfListOfEdge;
		 MAT_TListNodeOfListOfEdge ();
		%feature("compactdefaultargs") MAT_TListNodeOfListOfEdge;
		%feature("autodoc", "	:param anitem:
	:type anitem: opencascade::handle<MAT_Edge> &
	:rtype: None
") MAT_TListNodeOfListOfEdge;
		 MAT_TListNodeOfListOfEdge (const opencascade::handle<MAT_Edge> & anitem);
		%feature("compactdefaultargs") Next;
		%feature("autodoc", "	:rtype: opencascade::handle<MAT_TListNodeOfListOfEdge>
") Next;
		opencascade::handle<MAT_TListNodeOfListOfEdge> Next ();
		%feature("compactdefaultargs") Next;
		%feature("autodoc", "	:param atlistnode:
	:type atlistnode: opencascade::handle<MAT_TListNodeOfListOfEdge> &
	:rtype: None
") Next;
		void Next (const opencascade::handle<MAT_TListNodeOfListOfEdge> & atlistnode);
		%feature("compactdefaultargs") Previous;
		%feature("autodoc", "	:rtype: opencascade::handle<MAT_TListNodeOfListOfEdge>
") Previous;
		opencascade::handle<MAT_TListNodeOfListOfEdge> Previous ();
		%feature("compactdefaultargs") Previous;
		%feature("autodoc", "	:param atlistnode:
	:type atlistnode: opencascade::handle<MAT_TListNodeOfListOfEdge> &
	:rtype: None
") Previous;
		void Previous (const opencascade::handle<MAT_TListNodeOfListOfEdge> & atlistnode);
		%feature("compactdefaultargs") SetItem;
		%feature("autodoc", "	:param anitem:
	:type anitem: opencascade::handle<MAT_Edge> &
	:rtype: None
") SetItem;
		void SetItem (const opencascade::handle<MAT_Edge> & anitem);
};


%make_alias(MAT_TListNodeOfListOfEdge)

%extend MAT_TListNodeOfListOfEdge {
	%pythoncode {
	__repr__ = _dumps_object
	}
};
%nodefaultctor MAT_Zone;
class MAT_Zone : public Standard_Transient {
	public:
		%feature("compactdefaultargs") ArcOnFrontier;
		%feature("autodoc", "	* Return the Arc number <Index> on the frontier. of <self>.

	:param Index:
	:type Index: int
	:rtype: opencascade::handle<MAT_Arc>
") ArcOnFrontier;
		opencascade::handle<MAT_Arc> ArcOnFrontier (const Standard_Integer Index);
		%feature("compactdefaultargs") Limited;
		%feature("autodoc", "	* Return True if <self> is Limited.

	:rtype: bool
") Limited;
		Standard_Boolean Limited ();
		%feature("compactdefaultargs") MAT_Zone;
		%feature("autodoc", "	:rtype: None
") MAT_Zone;
		 MAT_Zone ();
		%feature("compactdefaultargs") MAT_Zone;
		%feature("autodoc", "	* Compute the frontier of the Zone of proximity.

	:param aBasicElt:
	:type aBasicElt: opencascade::handle<MAT_BasicElt> &
	:rtype: None
") MAT_Zone;
		 MAT_Zone (const opencascade::handle<MAT_BasicElt> & aBasicElt);
		%feature("compactdefaultargs") NoEmptyZone;
		%feature("autodoc", "	* Return True if <self> is not empty .

	:rtype: bool
") NoEmptyZone;
		Standard_Boolean NoEmptyZone ();
		%feature("compactdefaultargs") NumberOfArcs;
		%feature("autodoc", "	* Return the number Of Arcs On the frontier of <self>.

	:rtype: int
") NumberOfArcs;
		Standard_Integer NumberOfArcs ();
		%feature("compactdefaultargs") Perform;
		%feature("autodoc", "	* Compute the frontier of the Zone of proximity.

	:param aBasicElt:
	:type aBasicElt: opencascade::handle<MAT_BasicElt> &
	:rtype: None
") Perform;
		void Perform (const opencascade::handle<MAT_BasicElt> & aBasicElt);
};


%make_alias(MAT_Zone)

%extend MAT_Zone {
	%pythoncode {
	__repr__ = _dumps_object
	}
};
/* harray1 class */
/* harray2 class */
/* harray2 class */
