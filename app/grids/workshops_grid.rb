class WorkshopsGrid

  include Datagrid

  scope do
    Workshop
  end

  filter(:title, :string) { |value| where('title like ?', "%#{value}%") }

  column(:title)
  column(:contact) do |model|
    format(model.contact.to_label) do |value|
      link_to value, edit_contact_path(model)
    end
  end
end
