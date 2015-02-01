ActiveAdmin.register Product do

  menu priority: 4

  show do |object|
    attributes_table do
      row :id
      row :user
      row :round
      row :best
      row :name
      row :url
      row :description
      row :created_at
      row :updated_at

      div do
        panel("所有截图") do
          if object.images.any?
            table_for(object.images) do
              column "文件" do |image|
                image_tag image.file
              end
            end
          else
            h4 "该项目还未上传任何图片"
          end
        end
      end
    end
  end

  form do |f|
    f.inputs "" do
      f.input :user_id, as: :select, collection: User.all.map{|u| [u.email, u.id]}
      f.input :name
      f.input :url
      f.input :description
      f.input :round_id, as: :select, collection: Round.all.map{|round| [round.start_at, round.id]}
      f.input :best
      unless f.object.new_record?
        f.inputs  "截图" do
          f.has_many :images, :heading => "" do |image|
            image.input :file, label: '图片', as: :file, :hint => image.template.image_tag(image.object.file.url)
            image.input :_destroy, :as => :boolean
          end
        end
      end
    end
    f.actions
  end

  controller do
    protected
      def permitted_params
        params.permit!
      end
  end
end
