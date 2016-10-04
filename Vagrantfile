# -*- mode: ruby -*-
# vi: set ft=ruby :

Vagrant.configure(2) do |config|
  config.ssh.shell = "bash -c 'BASH_ENV=/etc/profile exec bash'"
  if (/cygwin|mswin|mingw|bccwin|wince|emx/ =~ RUBY_PLATFORM) != nil
    config.vm.synced_folder ".", "/vagrant", mount_options: ["dmode=700,fmode=600"]
  else
    config.vm.synced_folder ".", "/vagrant"
  end
  config.vm.define "kafka" do |d|
    d.vm.box = "ubuntu/trusty64"
    d.vm.hostname = "kafka"
    d.vm.network "private_network", ip: "10.100.198.200"
    d.vm.provision :shell, path: "scripts/bootstrap_kafka_install.sh"
    d.vm.provision :shell, path: "scripts/bootstrap_kafka_start.sh", run: "always"
    d.vm.provider "virtualbox" do |v|
      v.memory = 2048
    end
  end
  config.vm.define "datascience" do |d|
    d.vm.box = "ubuntu/trusty64"
    d.vm.hostname = "datascience"
    d.vm.network "private_network", ip: "10.100.198.201"
    d.vm.provision :shell, path: "scripts/bootstrap_spark.sh"
    d.vm.provision :shell, path: "scripts/bootstrap_datascience_install.sh"
    d.vm.provision :file, source: "notebooks/ScalaSparkStreaming.ipynb", destination: "~/ScalaSparkStreaming.ipynb"
    d.vm.provision :shell, path: "scripts/bootstrap_datascience_start.sh", run: "always"
    d.vm.provider "virtualbox" do |v|
      v.memory = 3072
    end
  end
end
