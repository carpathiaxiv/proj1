# Q0: Why is this error being thrown?

Because there was no Pokemon model and controller.

# Q1: How are the random Pokemon appearing? What is the common factor between all the possible Pokemon that appear? *

trainerless_pokemon = Pokemon.where(trainer:nil)
@pokemon = trainerless_pokemon.sample

# Question 2a: What does the following line do "<%= button_to "Throw a Pokeball!", capture_path(id: @pokemon), :class => "button medium", :method => :patch %>"? Be specific about what "capture_path(id: @pokemon)" is doing. If you're having trouble, look at the Help section in the README.

Creates a button called "Throw a Pokeball" which upon clicking, redirects to capture_path that was referenced to in routes.rb' captrure path. The size of the button is medium and method is patch.

# Question 3: What would you name your own Pokemon?

Etna.

# Question 4: What did you pass into the redirect_to? If it is a path, what did that path need? If it is not a path, why is it okay not to have a path here?

(:back). Because it gooes to the previous page which is what we want.

# Question 5: Explain how putting this line "flash[:error] = @pokemon.errors.full_messages.to_sentence" shows error messages on your form.

# Give us feedback on the project and decal below!

# Extra credit: Link your Heroku deployed app
