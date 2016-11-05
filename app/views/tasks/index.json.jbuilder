# <h1>Routes#index</h1>
# <p><%= @routes %></p>
# <ul>
#   <% @routes.each do |route| %>
#       <li><%= route.street %></li>
#   <% end %>
# </ul>

json.(@tasks, :route_id, :task_name, :completed)

  # json.routes @routes do |r|
  #   json.route r.route
  #   json.name r.name
  #   json.street r.street
  #   json.city r.city
  #   json.state r.state
  #   json.zip r.zip
  #   json.created_at r.created_at
  # end
