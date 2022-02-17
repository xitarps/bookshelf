class Types::AuthorType < Types::BaseObject
  field :id,         ID,      null: false, description: "id, UUID"
  field :first_name, String,  null: false, description: "The first name as String"
  field :last_name,  String,  null: false, description: "The Last name as String"
  field :birth_year, Int,     null: false, description: "The year of birth as Integer"
  field :is_alive,   Boolean, null: false, description: "If is alive as Boolean"
  field :created_at, GraphQL::Types::ISO8601DateTime,  null: false, description: "Timestamp of creation"
  field :updated_at, GraphQL::Types::ISO8601DateTime,  null: false, description: "Timestamp of last update"# , camelize: false # ruby/snake case

  # Custom methods, check app/models/author.rb
  field :full_name,         String, null: false, description: "The full name"
  field :reverse_full_name, String, null: false, description: "The full name backwards"

  def full_name
    "#{object.first_name} #{object.last_name}"
  end
end