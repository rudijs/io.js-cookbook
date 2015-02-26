#
# Cookbook Name:: iojs
# Recipe:: default
#
# Copyright (C) 2015 YOUR_NAME
#
# All rights reserved - Do Not Redistribute
#

tar_extract "https://iojs.org/dist/latest/iojs-v1.3.0-linux-x64.tar.gz" do
    target_dir '/usr/local/lib'
end

link "/usr/local/bin/iojs" do
    to "/usr/local/lib/iojs-v1.3.0-linux-x64/bin/iojs"
end

link "/usr/local/bin/node" do
    to "/usr/local/lib/iojs-v1.3.0-linux-x64/bin/node"
end

link "/usr/local/bin/npm" do
    to "/usr/local/lib/iojs-v1.3.0-linux-x64/bin/npm"
end
