RailsAdmin.config do |config|
  config.main_app_name = ['Dog Park Finder', 'Admin']

  config.authorize_with do |controller|
    unless current_user.try(:admin?)
      flash[:error] = "You are not an admin"
      redirect_to root_path
    end
  end

  config.current_user_method { current_user }

  config.actions do
    dashboard
    export
    index
    new
    show

    edit do
    end

    show_in_app
  end

  config.model 'UserPark' do
    list do
      field :name
      field :address
      field :city
      field :zip_code
      field :description
      field :picture
    end
  end

  config.model 'Park' do
    edit do
      field :name
      field :address
      field :city
      field :zip_code
      field :latitude
      field :longitude
    end

    list do
      field :name
      field :address
      field :city
      field :zip_code
      field :latitude
      field :longitude
    end
  end

  config.model 'User' do
    field :name
    field :email
    field :created_at
  end
end
