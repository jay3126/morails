class MdlRole < ActiveRecord::Base
has_and_belongs_to_many :mdl_users, :join_table => 'mdl_role_assignments', \
   :foreign_key => 'roleid', :association_foreign_key => 'userid' 
set_table_name "mdl_role"
end
