module Types
  class QueryType < Types::BaseObject
    # Add `node(id: ID!) and `nodes(ids: [ID!]!)`
    include GraphQL::Types::Relay::HasNodeField
    include GraphQL::Types::Relay::HasNodesField

    # Add root-level fields here.
    # They will be entry points for queries on your schema.

    # TODO: remove me
    field :test_field, String, null: false, description: "An example field added by the generator" do
      argument :name, String, required: true
    end
    def test_field(name:)
      Rails.logger.info context[:time]
      "Hello #{name}"
    end

    field :author, Types::AuthorType , null: true, description: "Returns one Author instance" do
      argument :first_name, String, required: true
    end
    def author(first_name:)
      Author.where(first_name: first_name).first
    end

    field :authors, [Types::AuthorType], null: true, description: "Retrive all authors" do
      argument :sort, String, required: false, description: "Sort by String 'desc' or 'asc'"
    end
    def authors(sort: nil)
      sort ? Author.all.order(first_name: sort.to_sym) : Author.all
    end
  end
end
