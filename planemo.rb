require "formula"

# Recipe for installing planemo - a CLI sdk for developing Galaxy
# tools. This recipe is largely based off the recipe for install
# ansible found here - https://github.com/Homebrew/homebrew/blob/master/Library/Formula/ansible.rb


class Planemo < Formula
  homepage "http://planemo.readthedocs.org/en/latest/"
  url "https://github.com/galaxyproject/planemo/archive/0.5.0.tar.gz"
  sha1 "1bebea0b2de996099b5fc640e75cbf51003b8361"

  head "https://github.com/galaxyproject/planemo.git"

  depends_on :python if MacOS.version <= :snow_leopard
  depends_on "libyaml"

  resource "click" do
    url "https://pypi.python.org/packages/source/c/click/click-3.3.tar.gz"
    sha1 "d716a932b930d71059e49465b6b42e833808369a"
  end

  resource "six" do
    url "https://pypi.python.org/packages/source/s/six/six-1.8.0.tar.gz"
    sha1 "aa3b0659cbc85c6c7a91efc51f2d1007040070cd"
  end

  resource "bioblend" do
    url "https://pypi.python.org/packages/source/b/bioblend/bioblend-0.5.2.tar.gz#md5=3ede96e5b3aed88f51c4cf33ce71396f"
    sha1 "90fdabcaea68beb5ac3b9d686c208c0f12bd2f7d"
  end

  resource "pyyaml" do
    url "https://pypi.python.org/packages/source/P/PyYAML/PyYAML-3.10.tar.gz"
    sha1 "476dcfbcc6f4ebf3c06186229e8e2bd7d7b20e73"
  end

  resource "requests" do
    url "https://pypi.python.org/packages/source/r/requests/requests-2.2.1.tar.gz"
    sha1 "88eb1fd6a0dfb8b97262f8029978d7c75eebc16f"
  end

  resource "boto" do
    url "https://pypi.python.org/packages/source/b/boto/boto-2.34.0.tar.gz"
    sha1 "e19d252b58054a7711fae910324e26b2b551a44d"
  end

  resource "pygithub" do
    url "https://pypi.python.org/packages/source/P/PyGithub/PyGithub-1.25.2.tar.gz"
    sha1 "0a5d108df61f298a0cc1a261611085564ee7db3a"
  end

  resource "jinja2" do
    url "https://pypi.python.org/packages/source/J/Jinja2/Jinja2-2.7.3.tar.gz"
    sha1 "25ab3881f0c1adfcf79053b58de829c5ae65d3ac"
  end

  resource "docutils" do
    url "https://pypi.python.org/packages/source/d/docutils/docutils-0.12.tar.gz"
    sha1 "002450621b33c5690060345b0aac25bc2426d675"
  end

  resource "poster" do
    url "https://pypi.python.org/packages/source/p/poster/poster-0.8.1.tar.gz#md5=2db12704538781fbaa7e63f1505d6fc8"
    sha1 "fd367020d22dc1cb7a8cc8207e2dfa9abb3ec0e6"
  end

  def install
    ENV["PYTHONPATH"] = libexec/"vendor/lib/python2.7/site-packages"
    ENV.prepend_create_path "PYTHONPATH", libexec/"lib/python2.7/site-packages"

    res = %w[pyyaml six click boto requests poster bioblend pygithub jinja2 docutils]
    res.each do |r|
      resource(r).stage do
        system "python", *Language::Python.setup_install_args( libexec/"vendor" )
      end
    end

    system "python", *Language::Python.setup_install_args(libexec)

    bin.install Dir["#{libexec}/bin/*"]
    bin.env_script_all_files(libexec/"bin", :PYTHONPATH => ENV["PYTHONPATH"])
  end

  test do
    system bin/"planemo", "--help"
  end
end
