ActiveAdmin.register User do
  permit_params :email, :password, :password_confirmation
  menu priority: 2

  filter :email
  filter :created_at

  action_item :only => :show do
    link_to("确认邮件", confirm_email_admin_user_path(user), :method => :post) unless user.confirmed?
  end

  member_action :confirm_email, :method => :post do
    user = User.find(params[:id])
    if user.confirm!
      redirect_to({:action => :show}, :notice => "用户已确认")
    else
      redirect_to :action => :show, :notice => '确认失败'
    end
  end

  index do
    selectable_column
    id_column
    column :email
    column :sign_in_count
    column :created_at
    column :confirmed_at
    actions
  end

  show do |object|
    attributes_table do
      row :id
      row :email
      row :current_sign_in_at
      row :sign_in_count
      row :created_at
      row :confirmed_at
      row :updated_at
    end
  end

  form do |f|
    f.inputs "User Details" do
      f.input :email
      f.input :password
      f.input :password_confirmation
    end
    f.actions
  end
end
