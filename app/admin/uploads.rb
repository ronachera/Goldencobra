ActiveAdmin.register Goldencobra::Upload, :as => "Upload"  do
  
  
  form :html => { :enctype => "multipart/form-data" }  do |f|
    f.inputs "Allgemein" do
      f.input :source
      f.input :rights
      f.input :description, :input_html => { :class =>"tinymce"}
      f.input :image, :as => :file
    end
    f.buttons
  end
  
  index do
    column "url" do |upload|
      result = ""
      result << upload.image.url
    end
    column :image_file_name
    column :image_content_type
    column :image_file_size
    column :source
    column :created_at
    default_actions
  end
  
  sidebar :image_formates do
    ul do
      li "original => AxB>"
      li "large => 900x900>"
      li "big => 600x600>"
      li "medium => 300x300>"
      li "thumb => 100x100>"
      li "mini => 50x50>"
    end
  end
  
end
