class EmployeesProjects < ActiveRecord::Migration
  def change
  	rename_table :prjects, :projects
  	create_table :employees_projects do |t|
  		t.belongs_to :employee, :project
  		t.timestamps
  	end
  end
end
