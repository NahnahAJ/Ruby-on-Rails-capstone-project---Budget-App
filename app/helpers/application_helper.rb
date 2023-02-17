module ApplicationHelper
  # Use the Controller#Action to determine the current page
  def nav_bar_content(controller_name, action_name)
    case "#{controller_name}##{action_name}"
    when 'groups#index'
      'Categories'
    when 'transactions#index'
      'Transactions'
    when 'devise/sessions#new'
      'Login'
    when 'devise/registrations#new'
      'Register'
    else
      link_to image_tag('https://cdn-icons-png.flaticon.com/128/3114/3114883.png', class: 'back_button'), groups_path
    end
  end
end
