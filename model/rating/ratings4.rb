class ZipCode < ActiveRecord::Base
  set_primary_key 'zip'
  
  def zips_within_miles(miles)
    ZipCode.find(:all,
		 :conditions => ["miles_between_lat_long(?, ?,
		  zip_codes.latitude, zip_codes.longitude) < ?",
                  self.latitude, self.longitude, miles])
  end
end

>> z = ZipCode.find('02319')
>> z.zips_within_miles(2).collect{|z| z.city}.uniq


module ClassMethods
  def acts_as_address
    find_within_miles = Proc.new_within_miles
    z = Zipcode.find_by_zip(zip)
    !z ?[] :
    self.clas.find(:all,
		   :include => :zip_code,
		   :conditions => ["miles_between_lat_long(?,
		     zip_codes,latitude, zip_codes.longtude) < ?",
                     z.latitude, z.longtitude, miles])
    end
    self.send(:define_method, 'find_within_miles', find_within_miles)
  end
end






