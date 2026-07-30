import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace VertexOperatorsVertexOperatorAlgebrasCanonicalLaneLean

structure RationalityPackage (V : VertexAlgebraSpace) where
  finiteNumberOfSimpleModules : Prop
  completeReducibility : Prop
  fusionProductFiniteness : Prop
  
structure RationalityEvidence {V : VertexAlgebraSpace} (R : RationalityPackage V) where
  finiteNumberOfSimpleModulesClosed : R.finiteNumberOfSimpleModules
  completeReducibilityClosed : R.completeReducibility
  fusionProductFinitenessClosed : R.fusionProductFiniteness

def RationalityClosed {V : VertexAlgebraSpace} (R : RationalityPackage V) : Prop :=
  R.finiteNumberOfSimpleModules ∧ R.completeReducibility ∧ R.fusionProductFiniteness

theorem rationality_closed_from_evidence {V : VertexAlgebraSpace}
    (R : RationalityPackage V) (E : RationalityEvidence R) :
    RationalityClosed R := by
  exact And.intro E.finiteNumberOfSimpleModulesClosed (And.intro E.completeReducibilityClosed E.fusionProductFinitenessClosed)

end VertexOperatorsVertexOperatorAlgebrasCanonicalLaneLean
end HautevilleHouse