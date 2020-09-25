# Documentation: https://docs.brew.sh/Formula-Cookbook
#                https://rubydoc.brew.sh/Formula
# PLEASE REMOVE ALL GENERATED COMMENTS BEFORE SUBMITTING YOUR PULL REQUEST!
class AvalancheWalletCli < Formula
  desc ""
  homepage ""
  license ""
  head "https://github.com/obsidiansystems/avalanche-wallet-cli.git"

  depends_on "yarn" => :build
  depends_on "nodejs"
  depends_on "libusb"

  def install
    system "yarn", "install", "--frozen-lockfile"
    libexec.install "node_modules"
    libexec.install "avalanche.js"
    libexec.install "ledgerjs"
    mkdir_p "#{libexec}/bin"
    libexec.install "cli/cli.js" => "bin/avalanche-wallet-cli"
    bin.install_symlink Dir["#{libexec}/bin/*"]
  end

  test do
    # `test do` will create, run in and delete a temporary directory.
    #
    # This test will fail and we won't accept that! For Homebrew/homebrew-core
    # this will need to be a test that verifies the functionality of the
    # software. Run the test with `brew test avalanche-wallet-cli`. Options passed
    # to `brew install` such as `--HEAD` also need to be provided to `brew test`.
    #
    # The installed folder is not in the path, so use the entire path to any
    # executables being tested: `system "#{bin}/program", "do", "something"`.
    system "false"
  end
end
