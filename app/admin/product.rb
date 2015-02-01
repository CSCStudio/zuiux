ActiveAdmin.register Product do

  menu priority: 4

  form do |f|
    f.inputs "" do
      f.input :user_id, as: :select, collection: User.all.map{|u| [u.email, u.id]}
      f.input :name
      f.input :url
      f.input :description
      f.input :round_id, as: :select, collection: Round.all.map{|round| [round.start_at, round.id]}
      f.input :best
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
