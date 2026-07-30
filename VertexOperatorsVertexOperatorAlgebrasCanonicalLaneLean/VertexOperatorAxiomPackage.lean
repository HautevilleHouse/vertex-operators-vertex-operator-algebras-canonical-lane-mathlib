import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace VertexOperatorsVertexOperatorAlgebrasCanonicalLaneLean

structure VertexAlgebraAxiomPackage where
  vacuumAxiom : Prop
  translationAxiom : Prop
  localityAxiom : Prop
  associativityAxiom : Prop
  commutativityAxiom : Prop
  
structure VertexAlgebraAxiomEvidence (P : VertexAlgebraAxiomPackage) where
  vacuumAxiomClosed : P.vacuumAxiom
  translationAxiomClosed : P.translationAxiom
  localityAxiomClosed : P.localityAxiom
  associativityAxiomClosed : P.associativityAxiom
  commutativityAxiomClosed : P.commutativityAxiom

def VertexAlgebraAxiomClosed (P : VertexAlgebraAxiomPackage) : Prop :=
  P.vacuumAxiom ∧ P.translationAxiom ∧ P.localityAxiom ∧ P.associativityAxiom ∧ P.commutativityAxiom

theorem vertex_algebra_axiom_closed_from_evidence
    (P : VertexAlgebraAxiomPackage) (E : VertexAlgebraAxiomEvidence P) : 
    VertexAlgebraAxiomClosed P := by
  exact And.intro E.vacuumAxiomClosed (And.intro E.translationAxiomClosed (And.intro E.localityAxiomClosed (And.intro E.associativityAxiomClosed E.commutativityAxiomClosed)))

end VertexOperatorsVertexOperatorAlgebrasCanonicalLaneLean
end HautevilleHouse