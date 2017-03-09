require File.expand_path(File.join(File.dirname(__FILE__), '..', 'puppet_x/reboot_pending/reboot_pending'))

Facter.add(:reboot_pending) do
  confine :osfamily => :windows

  setcode do
    rebootpending = PuppetX::RebootPending.new()

    rebootpending.reboot_pending?
  end
end