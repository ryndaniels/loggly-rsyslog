service "rsyslog"

template "/etc/rsyslog.conf" do
  source "rsyslog.conf.erb"
  mode 00644
  owner "root"
  group "root"
  notifies :restart, "service[rsyslog]", :delayed
end