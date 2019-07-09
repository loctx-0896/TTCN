module Admin::CategoriesHelper
  def load_child_category category
    @child_categories = Category.child_categories category.id
  end

  def load_parent_category
    @parent_categories.map{|p| [p.name, p.id]}
  end
end
