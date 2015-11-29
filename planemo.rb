require "formula"

# Recipe for installing planemo - a CLI sdk for developing Galaxy
# tools. This recipe is largely based off the recipe for install
# ansible found here - https://github.com/Homebrew/homebrew/blob/master/Library/Formula/ansible.rb


class Planemo < Formula
  homepage "http://planemo.readthedocs.org/en/latest/"
  url "https://pypi.python.org/packages/source/p/planemo/planemo-0.20.0.tar.gz"
  sha256 "3ba1c34038462c1d00bf5223e7e0046af150b3d09fa34b82c413a72475de6dfe"
  head "https://github.com/galaxyproject/planemo.git"

  option "without-completions", "Disable bash/zsh completions"

  depends_on :python if MacOS.version <= :snow_leopard
  depends_on "libxml2"  # For --xsd and --shed_lint
  depends_on "libyaml"

  resource "click" do
    url "https://pypi.python.org/packages/source/c/click/click-6.2.tar.gz"
    sha256 "fba0ff70f5ebb4cebbf64c40a8fbc222fb7cf825237241e548354dabe3da6a82"
  end

  resource "six" do
    url "https://pypi.python.org/packages/source/s/six/six-1.8.0.tar.gz"
    sha1 "aa3b0659cbc85c6c7a91efc51f2d1007040070cd"
  end

  resource "bioblend" do
    url "https://pypi.python.org/packages/source/b/bioblend/bioblend-0.7.0.tar.gz"
    sha256 "ce1f8e4c4c728e941ecc08752b364624da684e8001be7b719a74f8c49d5df129"
  end

  resource "cwltool" do
    url "https://pypi.python.org/packages/source/c/cwltool/cwltool-1.0.20150606210100.tar.gz"
    sha256 "39d8a71edad10d9c233d4120e7099b752cc93d77b5ddecd8109d2d7be51076b3"
  end

  resource "html5lib" do
    url "https://pypi.python.org/packages/source/h/html5lib/html5lib-0.9999999.tar.gz"
    sha256 "2612a191a8d5842bfa057e41ba50bbb9dcb722419d2408c78cff4758d0754868"
  end

  resource "rdflib" do
    url "https://pypi.python.org/packages/source/r/rdflib/rdflib-4.2.1.tar.gz"
    sha256 "eb02bd235606ef3b26e213da3e576557a6392ce103efd8c6c8ff1e08321608c8"
  end

  resource "rdflib-jsonld" do
    url "https://pypi.python.org/packages/source/r/rdflib-jsonld/rdflib-jsonld-0.3.tar.gz"
    sha256 "944a1cf22a217bd78acacc183ea329848cba3f24d0cfb86541b42732cd412a88"
  end

  resource "SPARQLWrapper" do
    url "https://pypi.python.org/packages/source/S/SPARQLWrapper/SPARQLWrapper-1.7.1.tar.gz"
    sha256 "9d4cf37eca0fdcd1f8ff6208d8daeaf297aa277dc099e1323c96e7ca5eb6cfdc"
  end

  resource "pyparsing" do
    url "https://pypi.python.org/packages/source/p/pyparsing/pyparsing-2.0.5.tar.gz"
    sha256 "58756bf33e989d84ac72142e4ca558cf10c778a3233edb0a86632f271409ba9e"
  end

  resource "isodate" do
    url "https://pypi.python.org/packages/source/i/isodate/isodate-0.5.4.tar.gz"
    sha256 "42105c41d037246dc1987e36d96f3752ffd5c0c24834dd12e4fdbe1e79544e31"
  end

  resource "shellescape" do
    url "https://pypi.python.org/packages/source/s/shellescape/shellescape-3.4.1.tar.gz"
    sha256 "e618b2bc13f2553315ca1669995dc10fcc2cae5f1e0fda49035ef02d56f0b358"
  end

  resource "schema-salad" do
    url "https://pypi.python.org/packages/source/s/schema-salad/schema-salad-1.0.tar.gz"
    sha256 "c18f9d0880be7eedd6925a7a6561036c97fdd3eb1320f10065e5c2e895099472"
  end

  resource "avro" do
    url "https://pypi.python.org/packages/source/a/avro/avro-1.7.7.tar.gz"
    sha256 "ce7a4f83254360eba538c9fa3eb1411afc1ab3be153b6c2daeeb404599a34158"
  end

  resource "mistune" do
    url "https://pypi.python.org/packages/source/m/mistune/mistune-0.7.1.tar.gz"
    sha256 "6076dedf768348927d991f4371e5a799c6a0158b16091df08ee85ee231d929a7"
  end

  resource "pyyaml" do
    url "https://pypi.python.org/packages/source/P/PyYAML/PyYAML-3.10.tar.gz"
    sha1 "476dcfbcc6f4ebf3c06186229e8e2bd7d7b20e73"
  end

  resource "pyOpenSSL" do
    url "https://pypi.python.org/packages/source/p/pyOpenSSL/pyOpenSSL-0.15.1.tar.gz#md5=f447644afcbd5f0a1f47350fec63a4c6"
    sha256 "f0a26070d6db0881de8bcc7846934b7c3c930d8f9c79d45883ee48984bc0d672"
  end

  resource "ndg-httpsclient" do
    url "https://pypi.python.org/packages/source/n/ndg-httpsclient/ndg_httpsclient-0.4.0.tar.gz"
    sha256 "e8c155fdebd9c4bcb0810b4ed01ae1987554b1ee034dd7532d7b8fdae38a6274"
  end

  resource "pyasn1" do
    url "https://pypi.python.org/packages/source/p/pyasn1/pyasn1-0.1.9.tar.gz"
    sha256 "853cacd96d1f701ddd67aa03ecc05f51890135b7262e922710112f12a2ed2a7f"
  end

  resource "requests" do
    url "https://pypi.python.org/packages/source/r/requests/requests-2.6.0.tar.gz"
    sha1 "ad7327c73e8be8c188ad489d511097202b1fef12"
  end

  resource "requests-toolbelt" do
    url "https://pypi.python.org/packages/source/r/requests-toolbelt/requests-toolbelt-0.4.0.tar.gz"
    sha256 "15b74b90a63841b8430d6301e5062cd92929b1074b0c95bf62166b8239db1a96"
  end

  resource "pycurl" do
    url "https://pypi.python.org/packages/source/p/pycurl/pycurl-7.19.5.3.tar.gz"
    sha256 "24f6c4016b1dd2a5e29d1b025ac2ad61f80c17adfdcf8a7f47aefab63ace78d7"
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

  resource "virtualenv" do
    url "https://pypi.python.org/packages/source/v/virtualenv/virtualenv-13.1.2.tar.gz"
    sha256 "aabc8ef18cddbd8a2a9c7f92bc43e2fea54b1147330d65db920ef3ce9812e3dc"
  end

  def install
    ENV["PYTHONPATH"] = libexec/"vendor/lib/python2.7/site-packages"
    ENV.prepend_create_path "PYTHONPATH", libexec/"lib/python2.7/site-packages"

    res = %w[virtualenv pyyaml html5lib pyOpenSSL ndg-httpsclient pyasn1 pycurl six click boto requests requests-toolbelt poster bioblend pygithub markupsafe jinja2 docutils glob2 shellescape isodate pyparsing rdflib rdflib-jsonld SPARQLWrapper avro mistune schema-salad cwltool]
    res.each do |r|
      resource(r).stage do
        system "python", *Language::Python.setup_install_args( libexec/"vendor" )
      end
    end

    bash_completion.install "planemo/scripts/planemo-completion.sh"
    zsh_completion.mkpath
    cp "#{bash_completion}/planemo-completion.sh", zsh_completion+"_planemo"

    system "python", *Language::Python.setup_install_args(libexec)

    bin.install Dir["#{libexec}/bin/planemo"]
    bin.env_script_all_files(libexec/"bin", :PYTHONPATH => ENV["PYTHONPATH"])

  end

  test do
    system bin/"planemo", "--help"
  end
end
