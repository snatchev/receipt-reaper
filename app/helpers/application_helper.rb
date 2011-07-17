module ApplicationHelper
  def category_select(collection)
    select(
      :receipt,
      :category_id,
      options_from_collection_for_select(collection, :id, :name) +
        options_for_select(['---', ['Add New', {:class => 'add-new'}] ]),
      :include_blank => true)
  end
end
