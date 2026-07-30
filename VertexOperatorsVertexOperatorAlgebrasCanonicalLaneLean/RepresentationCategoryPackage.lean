import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace VertexOperatorsVertexOperatorAlgebrasCanonicalLaneLean

structure RepresentationCategoryPackage (V : VertexAlgebraSpace) where
  objectsAreModules : Prop
  morphismsAreIntertwiners : Prop
  braidedTensorCategory : Prop
  modularTensorCategory : Prop
  
structure RepresentationCategoryEvidence {V : VertexAlgebraSpace} (R : RepresentationCategoryPackage V) where
  objectsAreModulesClosed : R.objectsAreModules
  morphismsAreIntertwinersClosed : R.morphismsAreIntertwiners
  braidedTensorCategoryClosed : R.braidedTensorCategory
  modularTensorCategoryClosed : R.modularTensorCategory

def RepresentationCategoryClosed {V : VertexAlgebraSpace} (R : RepresentationCategoryPackage V) : Prop :=
  R.objectsAreModules ∧ R.morphismsAreIntertwiners ∧ R.braidedTensorCategory ∧ R.modularTensorCategory

theorem representation_category_closed_from_evidence {V : VertexAlgebraSpace}
    (R : RepresentationCategoryPackage V) (E : RepresentationCategoryEvidence R) :
    RepresentationCategoryClosed R := by
  exact And.intro E.objectsAreModulesClosed (And.intro E.morphismsAreIntertwinersClosed (And.intro E.braidedTensorCategoryClosed E.modularTensorCategoryClosed))

end VertexOperatorsVertexOperatorAlgebrasCanonicalLaneLean
end HautevilleHouse