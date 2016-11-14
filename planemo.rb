require "formula"

# Recipe for installing planemo - a CLI sdk for developing Galaxy
# tools. This recipe is largely based off the recipe for install
# ansible found here - https://github.com/Homebrew/homebrew/blob/master/Library/Formula/ansible.rb


class Planemo < Formula
  homepage "http://planemo.readthedocs.org/en/latest/"
  url "https://pypi.python.org/packages/99/3c/6f1004343bad1e79106eb47030a055b02655e08137f55036ca13f71f55cc/planemo-0.34.1.tar.gz"
  sha256 "1e1ce853147eceed3f0c6b7ae44e0dc1491c955eded8c88fe32d3f1166ade12e"
  head "https://github.com/galaxyproject/planemo.git"

  option "without-completions", "Disable bash/zsh completions"

  depends_on :python if MacOS.version <= :snow_leopard
  depends_on "libxml2"  # For --xsd and --shed_lint
  depends_on "libyaml"

  resource "ephemeris" do
    url "https://pypi.python.org/packages/3b/4b/90da7bff5233c76e023b090b0935bf644a20ac54f3848ff73612be9f2a18/ephemeris-0.2.0.tar.gz"
    sha256 "40b4df0486e1f9837593f838658a30820ac22caebe1724de91c8c67339628caa"
  end

  resource "galaxy-lib" do
    url "https://pypi.python.org/packages/55/51/7a1158488e9939ab9ccd1824e37d2bfca1e3a4ded1276a8482db26e51f3a/galaxy-lib-16.10.5.tar.gz"
    sha256 "124ba14d11beb5fb836418e02358403e748e577e3b4e6397dfc7c6c0a6ced26d"
  end

  resource "click" do
    url "https://pypi.python.org/packages/source/c/click/click-6.2.tar.gz"
    sha256 "fba0ff70f5ebb4cebbf64c40a8fbc222fb7cf825237241e548354dabe3da6a82"
  end

  resource "six" do
    url "https://pypi.python.org/packages/source/s/six/six-1.9.0.tar.gz"
    sha256 "e24052411fc4fbd1f672635537c3fc2330d9481b18c0317695b46259512c91d5"
  end

  resource "gxformat2" do
    url "https://pypi.python.org/packages/23/75/0dbb9f70073737c971d165f92a3579cc706bd3459eecd1d63a8f23a827cf/gxformat2-0.1.1.tar.gz"
    sha256 "4cab07def6767166001493b27bb5ca92b4e5c31104698cad95f66dd0bbfd8038"
  end

  resource "bioblend" do
    url "https://pypi.python.org/packages/6b/fe/3ae03a2de4106c1bfea45eebb99a6ba7ed9debb212d64eb5abeaea0a8a89/bioblend-0.8.0.tar.gz"
    sha256 "b23e0ac23d6ff63f8354125ea99cad2e98be0f0b22a5709b461755bcd86f936f"
  end

  resource "cwltool" do
    url "https://pypi.python.org/packages/18/d2/2f63ac95b2daebc2724628d0c7a71fdb04d72abc4f3f4972380aca0d0966/cwltool-1.0.20160726135535.tar.gz"
    sha256 "95953bec5f51e902dab8528ad379552179ba574f0d7087b560f517ade7d5aae3"
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
    url "https://pypi.python.org/packages/57/01/14d5e22dbc71da0b7efd80f115e14e4a2d59710b85b4164719af6faf3da7/schema-salad-1.14.20160708181155.tar.gz"
    sha256 "b408b22b9fbd58b76333696806de78d3cc2b028a0f1858f00d1204e4c6d98644"
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
    sha256 "e713da45c96ca53a3a8b48140d4120374db622df16ab71759c9ceb5b8d46fe7c"
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

  resource "aenum" do
    url "https://pypi.python.org/packages/ce/ad/5b069b4212a918b4f10c413ad6b580a009b4afc577b91743da70bbf15373/aenum-1.4.4.tar.gz"
    sha256 "74271c1c5f4b75cabe1da7b2ca74d7209ec9f66901388ed53897cc2b800e3f8f"
  end

  resource "typing" do
    url "https://pypi.python.org/packages/8c/7d/24c4d40b9839b4d3e8f70ef728c483a2f543ecd26c1856828372c78f209d/typing-3.5.1.0.tar.gz"
    sha256 "88675d0545ccb44229a745d00ca03f56364e07d0e6de318dc14686f0d985e406"
  end

  resource "ruamel.base" do
    url "https://pypi.python.org/packages/ea/77/60a0945f4b4eac4b6bd74d1b8e103ae58d0f07b934f962bb4c49e6ec205e/ruamel.base-1.0.0.tar.gz"
    sha256 "c041333a0f0f00cd6593eb36aa83abb1a9e7544e83ba7a42aa7ac7476cee5cf3"
  end

  resource "ruamel.yaml" do
    url "https://pypi.python.org/packages/fc/f1/7530ac8594453fc850e53580256f3152a8d8f2bb351bc3d0df8d7b53dbde/ruamel.yaml-0.11.11.tar.gz"
    sha256 "ceb179bacbf32cd42449b102f962939ebae303f0418d4588368d0c0b374ff3a3"
  end

  resource "ruamel.ordereddict" do
    url "https://pypi.python.org/packages/b1/17/97868578071068fe7d115672b52624d421ff24e5e802f65d6bf3ea184e8f/ruamel.ordereddict-0.4.9.tar.gz"
    sha256 "7058c470f131487a3039fb9536dda9dd17004a7581bdeeafa836269a36a2b3f6"
  end

  resource "keepalive" do
    url "https://pypi.python.org/packages/6a/11/8eaf21d74b06cfabd42ca9d2b7b216e071faa416753faeb3322f1863f585/keepalive-0.5.tar.gz"
    sha256 "3c6b96f9062a5a76022f0c9d41e9ef5552d80b1cadd4fccc1bf8f183ba1d1ec1"
  end

  resource "requests" do
    url "https://pypi.python.org/packages/source/r/requests/requests-2.6.0.tar.gz"
    sha256 "1cdbed1f0e236f35ef54e919982c7a338e4fea3786310933d3a7887a04b74d75"
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
    sha256 "33baab022ecb803414ad0d6cf4041d010cfc2755ff8acc3bea7b32e77ba98be0"
  end

  resource "pygithub" do
    url "https://pypi.python.org/packages/source/P/PyGithub/PyGithub-1.25.2.tar.gz"
    sha256 "72aee507625e8ce6e3bef825e2ba543d0a2a20cb5ba5edfbe6436fc6eadfcef8"
  end

  resource "jinja2" do
    url "https://pypi.python.org/packages/source/J/Jinja2/Jinja2-2.7.3.tar.gz"
    sha256 "2e24ac5d004db5714976a04ac0e80c6df6e47e98c354cb2c0d82f8879d4f8fdb"
  end

  resource "docutils" do
    url "https://pypi.python.org/packages/source/d/docutils/docutils-0.12.tar.gz"
    sha256 "c7db717810ab6965f66c8cf0398a98c9d8df982da39b4cd7f162911eb89596fa"
  end

  resource "poster" do
    url "https://pypi.python.org/packages/source/p/poster/poster-0.8.1.tar.gz#md5=2db12704538781fbaa7e63f1505d6fc8"
    sha256 "af5bf45da4a916db2b638cffd9e9d6668b33020e2b8ca9f864db79b49331c6ff"
  end

  resource "markupsafe" do
    url "https://pypi.python.org/packages/source/M/MarkupSafe/MarkupSafe-0.23.tar.gz#md5=f5ab3deee4c37cd6a922fb81e730da6e"
    sha256 "a4ec1aff59b95a14b45eb2e23761a0179e98319da5a7eb76b56ea8cdc7b871c3"
  end

  resource "glob2" do
    url "https://pypi.python.org/packages/source/g/glob2/glob2-0.4.1.tar.gz"
    sha256 "9974c375c54eb56223643980e724b37fc8efcaeb65fc55045fc521baa5f60175"
  end

  resource "virtualenv" do
    url "https://pypi.python.org/packages/source/v/virtualenv/virtualenv-13.1.2.tar.gz"
    sha256 "aabc8ef18cddbd8a2a9c7f92bc43e2fea54b1147330d65db920ef3ce9812e3dc"
  end

  resource "pyaml" do
    url "https://pypi.python.org/packages/a5/6e/e1cfae73530270e4e3efcf58d0099d3dbc9db69e548e55593099c05cc5bb/pyaml-16.11.0.tar.gz"
    sha256 "4d6f76cf210080c25007a20615113ab6eb3696f9cab9260dd85dabdd100b3257"
  end

  resource "BeautifulSoup4" do
    url "https://pypi.python.org/packages/86/ea/8e9fbce5c8405b9614f1fd304f7109d9169a3516a493ce4f7f77c39435b7/beautifulsoup4-4.5.1.tar.gz"
    sha256 "3c9474036afda9136aac6463def733f81017bf9ef3510d25634f335b0c87f5e1"
  end

  resource "configparser" do
    url "https://pypi.python.org/packages/7c/69/c2ce7e91c89dc073eb1aa74c0621c3eefbffe8216b3f9af9d3885265c01c/configparser-3.5.0.tar.gz"
    sha256 "5308b47021bc2340965c371f0f058cc6971a04502638d4244225c49d80db273a"
  end

  def install
    vendor_site_packages = libexec/"vendor/lib/python2.7/site-packages"
    ENV.prepend_create_path "PYTHONPATH", vendor_site_packages

    res = %w[aenum virtualenv pyyaml pyaml BeautifulSoup4 configparser html5lib pyOpenSSL ndg-httpsclient pyasn1 pycurl six click boto requests requests-toolbelt poster bioblend ephemeris gxformat2 pygithub markupsafe jinja2 docutils glob2 ruamel.base ruamel.ordereddict ruamel.yaml keepalive typing shellescape isodate pyparsing rdflib rdflib-jsonld SPARQLWrapper avro mistune schema-salad cwltool galaxy-lib]
    res.each do |r|
      resource(r).stage do
        system "python", *Language::Python.setup_install_args( libexec/"vendor" )
      end
    end

    # hack namespace packages... same is done is Homebrew proper ansible recipe
    # https://github.com/Homebrew/legacy-homebrew/blob/master/Library/Formula/ansible.rb#L582
    touch vendor_site_packages/"ndg/__init__.py"
    touch vendor_site_packages/"ruamel/__init__.py"

    ENV.prepend_create_path "PYTHONPATH", libexec/"lib/python2.7/site-packages"

    bash_completion.install "planemo/scripts/planemo-completion.sh"
    zsh_completion.mkpath
    cp "#{bash_completion}/planemo-completion.sh", zsh_completion+"_planemo"

    ENV["PLANEMO_REQUIRE_LXML"] = "0"
    system "python", *Language::Python.setup_install_args(libexec)

    bin.install Dir["#{libexec}/bin/planemo"]
    bin.install Dir["#{libexec}/vendor/bin/virtualenv"]
    bin.env_script_all_files(libexec/"bin", :PYTHONPATH => ENV["PYTHONPATH"])
  end

  test do
    system bin/"planemo", "--help"
  end
end
