require "formula"

# Recipe for installing planemo - a CLI sdk for developing Galaxy
# tools. This recipe is largely based off the recipe for install
# ansible found here - https://github.com/Homebrew/homebrew/blob/master/Library/Formula/ansible.rb


class Planemo < Formula
  homepage "http://planemo.readthedocs.org/en/latest/"
  url "https://pypi.python.org/packages/source/p/planemo/planemo-0.13.0.tar.gz"
  sha256 "fe4148d84f75cbf9d9d7b8fbf0497b2edfaecba05846e95e82777e11ebed7383"

  head "https://github.com/galaxyproject/planemo.git"

  option "without-completions", "Disable bash/zsh completions"

  depends_on :python if MacOS.version <= :snow_leopard
  depends_on "libxml2"  # For --xsd and --shed_lint
  depends_on "libyaml"

  resource "click" do
    url "https://pypi.python.org/packages/source/c/click/click-4.0.tar.gz"
    sha256 "f49e03611f5f2557788ceeb80710b1c67110f97c5e6740b97edf70245eea2409"
  end

  resource "six" do
    url "https://pypi.python.org/packages/source/s/six/six-1.8.0.tar.gz"
    sha1 "aa3b0659cbc85c6c7a91efc51f2d1007040070cd"
  end

  resource "bioblend" do
    url "https://pypi.python.org/packages/source/b/bioblend/bioblend-0.5.3.tar.gz"
    sha1 "98361291088319be2d9cd60e5e93459047ad998d"
  end

  resource "pyyaml" do
    url "https://pypi.python.org/packages/source/P/PyYAML/PyYAML-3.10.tar.gz"
    sha1 "476dcfbcc6f4ebf3c06186229e8e2bd7d7b20e73"
  end

  resource "requests" do
    url "https://pypi.python.org/packages/source/r/requests/requests-2.6.0.tar.gz"
    sha1 "ad7327c73e8be8c188ad489d511097202b1fef12"
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

  resource "markupsafe" do
    url "https://pypi.python.org/packages/source/M/MarkupSafe/MarkupSafe-0.23.tar.gz#md5=f5ab3deee4c37cd6a922fb81e730da6e"
    sha1 "cd5c22acf6dd69046d6cb6a3920d84ea66bdf62a"
  end

  resource "glob2" do
    url "https://pypi.python.org/packages/source/g/glob2/glob2-0.4.1.tar.gz"
    sha1 "f215687048ddf05ad34aada784fa2c383f6dda9b"
  end

  def install
    ENV["PYTHONPATH"] = libexec/"vendor/lib/python2.7/site-packages"
    ENV.prepend_create_path "PYTHONPATH", libexec/"lib/python2.7/site-packages"

    res = %w[pyyaml six click boto requests poster bioblend pygithub markupsafe jinja2 docutils glob2]
    res.each do |r|
      resource(r).stage do
        system "python", *Language::Python.setup_install_args( libexec/"vendor" )
      end
    end

    bash_completion.install "planemo/scripts/planemo-completion.sh"
    zsh_completion.mkpath
    cp "#{bash_completion}/planemo-completion.sh", zsh_completion+"_planemo"

    system "python", *Language::Python.setup_install_args(libexec)

    bin.install Dir["#{libexec}/bin/*"]
    bin.env_script_all_files(libexec/"bin", :PYTHONPATH => ENV["PYTHONPATH"])

  end

  test do
    system bin/"planemo", "--help"
  end
end
