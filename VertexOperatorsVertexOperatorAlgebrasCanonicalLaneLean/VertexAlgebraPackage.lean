import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace VertexOperatorsVertexOperatorAlgebrasCanonicalLaneLean

structure VertexAlgebraPackage where
  space : Type u
  translationOperator : space → space
  vacuumVector : space
  stateFieldMap : space → ℤ → Module.End ℂ space
  locality : Prop
  translationCovariance : Prop
  vacuumProperty : Prop
  fieldStateCorrespondence : Prop
  localityTerm : locality
  translationCovarianceTerm : translationCovariance
  vacuumPropertyTerm : vacuumProperty
  fieldStateCorrespondenceTerm : fieldStateCorrespondence

structure VertexAlgebraEvidence (V : VertexAlgebraPackage) where
  localityClosed : V.locality
  translationCovarianceClosed : V.translationCovariance
  vacuumPropertyClosed : V.vacuumProperty
  fieldStateCorrespondenceClosed : V.fieldStateCorrespondence

def VertexAlgebraClosed (V : VertexAlgebraPackage) : Prop :=
  V.locality ∧ V.translationCovariance ∧ V.vacuumProperty ∧ V.fieldStateCorrespondence

theorem vertex_algebra_closed_from_evidence (V : VertexAlgebraPackage)
    (E : VertexAlgebraEvidence V) : VertexAlgebraClosed V := by
  exact And.intro E.localityClosed
    (And.intro E.translationCovarianceClosed
      (And.intro E.vacuumPropertyClosed E.fieldStateCorrespondenceClosed))

end HautevilleHouse.VertexOperatorsVertexOperatorAlgebrasCanonicalLaneLean