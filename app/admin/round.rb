ActiveAdmin.register Round do
  permit_params :start_at, :end_at
  menu priority: 3

  form do |f|
    f.inputs "" do
      f.input :start_at, as: :datepicker, datepicker_options: { dateFormat: "yy-mm-dd" }
      f.input :end_at, as: :datepicker, datepicker_options: { dateFormat: "yy-mm-dd" }
    end
    f.actions
  end
end
