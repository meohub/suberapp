class ContactsGrid

  include Datagrid

  scope do
    Contact
  end

  # filter(:id, :integer)
  filter(:name, :string) { |value| where('name like ?', "%#{value}%") }
  filter(:surname, :string) { |value| where('surname like ?', "%#{value}%") }
  filter(:phone_number, :string) { |value| where('phone_number like ?', "%#{value}%") }
  filter(:email, :string) { |value| where('email like ?', "%#{value}%") }
  filter(:notes) { |value| where('notes like ?', "%#{value}%") }

  column(:id)
  column(:name)
  column(:surname)
  column(:phone_number)
  column(:email) do |model|
    format(model.email) do |value|
      link_to value, edit_contact_path(model)
    end
  end

  column(:notes)
  column(:address)
  column(:city)
  column(:zip)
  column(:state)
end
