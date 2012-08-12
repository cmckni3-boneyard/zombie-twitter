class AppVersion < ActiveRecord::Base
  
  def self.latest
    find(:first, :order => "created_at DESC")
  end
  
  def self.bump_major
    @version = AppVersion.latest
    if @version.nil?
      @version = AppVersion.create(:version => '1.0', :revision => '1')
    else
      version = @version.version.to_f + 1
      AppVersion.create(:version => version, :revision => @version.revision)
    end
  end
  
  def self.bump_minor
    @version = AppVersion.latest
    if @version.nil?
      @version = AppVersion.create(:version => '1.0', :revision => '1')
    else
      version = @version.version.to_f + 0.1
      AppVersion.create(:version => version, :revision => @version.revision)
    end
  end
  
  def self.bump_revision
    @version = AppVersion.latest
    if @version.nil?
      @version = AppVersion.create(:version => '1.0', :revision => '1')
    else
      revision = @version.revision.to_i + 1
      AppVersion.create(:version => @version.version, :revision => revision.to_s)
    end
  end
  
  attr_accessible :revision, :version
end
