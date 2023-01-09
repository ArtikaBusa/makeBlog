ActiveAdmin.register Blog do
  permit_params :title, :content, :image, :category, :active

  filter :title
  filter :category
  filter :created_at

  form do |f|
    f.inputs do
      f.input :title
      f.input :category, as: :select
      f.input :content, as: :quill_editor, :input_html => { :class => 'autogrow'}
      f.input :image, as: :file, :hint => f.object.persisted? ? image_tag(url_for(f.object.image), size: "260x180") : ''
      f.input :active
    end
    f.actions
  end

  show do
    attributes_table do
      row :title
      row :category
      row :content
      row :active
      row :image do
        div do
          image_tag url_for(blog.image), size: "200x200"
        end
      end
    end
  end

end
