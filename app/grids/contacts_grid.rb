class ContactsGrid

  include Datagrid

  scope do
    Contact
  end

  filter(:name, :string)
  filter(:surname, :string)
  filter(:phone_number, :string)
  filter(:email, :string)
  filter(:notes, :string)

  column(:name)
end
