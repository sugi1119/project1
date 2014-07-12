Practioner.destroy_all
Patient.destroy_all
Appointment.destroy_all

r1 = Practioner.create(:name => 'Miriam',:username => 'zoe', :password => 'password', :password_confirmation => 'password' )
r2 = Practioner.create(:name => 'Sugi', :username => 'yuko', :password => 'password', :password_confirmation => 'password', :is_admin => 'true')

a1 = Patient.create(:f_name => 'Yuko', :m_name => '', :l_name => 'Sugiyama', :title => 'Ms', :address => '16 Lamrock Avenue Bondi Beach NSW', :postcode => '2026', :dob => '1234-05-06', :phone => '0293656789', :mobile => '0412123456', :occupation => 'web developer')


#  appointment_date :datetime
#  patient_id       :integer
#  practioner_id    :integer

#  f_name     :string(255)
#  m_name     :string(255)
#  l_name     :string(255)
#  title      :string(255)
#  address    :string(255)
#  postcode   :string(255)
#  dob        :date
#  phone      :string(255)
#  mobile     :string(255)
#  occupation :string(255)

#  name            :string(255)
#  created_at      :datetime
#  updated_at      :datetime
#  password_digest :string(255)
#  is_admin        :boolean          default(FALSE)
#  username        :string(255)
#  email           :string(255)
#