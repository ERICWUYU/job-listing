class AddAttachmentToJobs < ActiveRecord::Migration[5.0]
  def change
    add_column :jobs, :attachment, :string
  end
end
