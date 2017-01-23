class ContactsGrid

  include Datagrid

  scope do
    Contact
  end

  # filter(:name, :string)
  filter(:name, :string) { |value| where('name like ?', "%#{value}%") }
  filter(:surname, :string) { |value| where('surname like ?', "%#{value}%") }
  filter(:phone_number, :string) { |value| where('phone_number like ?', "%#{value}%") }
  filter(:email, :string) { |value| where('email like ?', "%#{value}%") }
  filter(:notes) { |value| where('notes like ?', "%#{value}%") }





  column(:name)
  column(:surname)
  column(:phone_number)
  column(:email)
  column(:notes)
  column(:city)
  column(:state)
end
