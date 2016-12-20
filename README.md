# Travel API

## Synopsis

This project is a rails API backend built for a group project. Planscape is a tool designed for landscapers to track jobs and follow the quickest route from job to job.

[Hosted on heroku](https://shielded-atoll-99970.herokuapp.com/)

[View the front end for this assignment on GitHub Pages](https://donaldsonjulia.github.io/TIY-Planscape/)



##Code Example
```ruby
def destroy
  @location = Route.find(params[:id])

  if @location.destroy
    add_each_task_list
    render :json => @routes
  else
    render_error @location.errors.full_messages
  end
end
```

##Contributors

* [Sam Davis-Castro - frontend](https://github.com/SamPlifier)
* [Julia Donaldson - frontend](https://github.com/donaldsonjulia)
* [Gabriel Estes - backend](https://github.com/gabrielestes)
* [Jenn Tustin - backend](https://github.com/jennt)
