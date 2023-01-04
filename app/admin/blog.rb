ActiveAdmin.register Blog do
  permit_params :title, :content, images: []


  filter :title
  filter :created_at

  form do |f|
    f.inputs do
      f.input :title
      f.input :category, as: :select
      f.input :content, as: :quill_editor
      f.input :images, as: :file, input_html: { multiple: true }
    end
    f.actions
  end

  show do
    attributes_table do
      row :title
      row :category
      row :content do
        div resource.content
      end
      row :images do
        div do
          blog.images.each do |img|
            div do
              image_tag url_for(img), size: "200x200"
            end
          end
        end
      end
    end
  end

end
