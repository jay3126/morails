class MdlUser < ActiveRecord::Base
has_and_belongs_to_many :mdl_roles, :join_table => 'mdl_role_assignments', \
   :foreign_key => 'userid', :association_foreign_key => 'roleid' 
set_table_name "mdl_user"
end
