* `rails g model Smoothie` creates a smoothie model with the default singularized form of "smoothy."
* To change the singularized form of the word, add this to config/initializers/infections.rb
  ```ruby
  ActiveSupport::Inflector.inflections do |inflect|
    inflect.irregular 'smoothie', 'smoothies'
  end
  ```
* Finally, delete the smoothie model with `rails d model Smoothie` and recreate it with `rails g model Smoothie`
