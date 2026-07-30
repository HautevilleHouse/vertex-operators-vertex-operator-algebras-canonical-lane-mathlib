import HautevilleHouse.VertexOperatorsVertexOperatorAlgebrasCanonicalLaneLean.VertexAlgebraPackage

namespace HautevilleHouse
namespace VertexOperatorsVertexOperatorAlgebrasCanonicalLaneLean

structure VertexOperatorModule (V : VertexAlgebraPackage) where
  moduleSpace : Type u
  moduleAction : V.space → ℤ → Module.End ℂ moduleSpace
  associativity : Prop
  vacuumAction : Prop
  moduleActionClosed : associativity ∧ vacuumAction

structure VOModuleEvidence {V : VertexAlgebraPackage} (M : VertexOperatorModule V) where
  associativityClosed : M.associativity
  vacuumActionClosed : M.vacuumAction

def VOModuleClosed {V : VertexAlgebraPackage} (M : VertexOperatorModule V) : Prop :=
  M.associativity ∧ M.vacuumAction

theorem vomodule_closed_from_evidence {V : VertexAlgebraPackage} (M : VertexOperatorModule V)
    (E : VOModuleEvidence M) : VOModuleClosed M := by
  exact And.intro E.associativityClosed E.vacuumActionClosed

end HautevilleHouse.VertexOperatorsVertexOperatorAlgebrasCanonicalLaneLean