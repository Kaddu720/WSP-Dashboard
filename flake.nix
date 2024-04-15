{
  description = "A Flake for managing the Dahsboard Project";

  inputs = {
      nixpkgs.url = "github:nixos/nixpkgs?ref=nixos-unstable";
      python310Package.url = "github:nixos/nixpkgs/2230a20f2b5a14f2db3d7f13a2dc3c22517e790b";
      bablePackage.url = "github:nixos/nixpkgs/fd04bea4cbf76f86f244b9e2549fca066db8ddff";
      djangoPackage.url = "github:nixos/nixpkgs/a3ed7406349a9335cb4c2a71369b697cecd9d351";
      djangoBootstrapPackage.url = "github:nixos/nixpkgs/d2b52322f35597c62abf56de91b0236746b2a03d";
      djangoCkeditorPackage.url = "github:nixos/nixpkgs/fd04bea4cbf76f86f244b9e2549fca066db8ddff";
      djangoCrispyFormsPackage.url = "github:nixos/nixpkgs/fd04bea4cbf76f86f244b9e2549fca066db8ddff";
      djangoJsAssetPackage.url = "github:nixos/nixpkgs/fd04bea4cbf76f86f244b9e2549fca066db8ddff";
      djangoLocalflavorPackage.url = "github:nixos/nixpkgs/fd04bea4cbf76f86f244b9e2549fca066db8ddff";
      djangoPhoneNumberFieldPackage.url = "github:nixos/nixpkgs/fd04bea4cbf76f86f244b9e2549fca066db8ddff";
      mysqlclientPackage.url = "github:nixos/nixpkgs/d44d59d2b5bd694cd9d996fd8c51d03e3e9ba7f7";
      phonenumbersPackage.url = "github:nixos/nixpkgs/fd04bea4cbf76f86f244b9e2549fca066db8ddff";
      pillowPackage.url = "github:nixos/nixpkgs/fd04bea4cbf76f86f244b9e2549fca066db8ddff";
      stdnumPackage.url = "github:nixos/nixpkgs/fd04bea4cbf76f86f244b9e2549fca066db8ddff";
      pytzPackage.url = "github:nixos/nixpkgs/517501bcf14ae6ec47efd6a17dda0ca8e6d866f9";
      reportlabPackage.url = "github:nixos/nixpkgs/fd04bea4cbf76f86f244b9e2549fca066db8ddff";
      djangoExtentionsPackage.url = "github:nixos/nixpkgs/20bc93ca7b2158ebc99b8cef987a2173a81cde35";
      werkzeugPackage.url = "github:nixos/nixpkgs/517501bcf14ae6ec47efd6a17dda0ca8e6d866f9";
      pyOpenSSLPackage.url = "github:nixos/nixpkgs/807c549feabce7eddbf259dbdcec9e0600a0660d";
  };


  outputs = { self, nixpkgs, ... }@inputs: 
    let
      system = "x86_64-linux";
      pkgs = nixpkgs.legacyPackages.${system};
    in
    {
        devShells.x86_64-linux.default = pkgs.mkShell { 
            nativeBuildInputs = with pkgs; [
                inputs.python310Package.legacyPackages.${system}.python310
                inputs.bablePackage.legacyPackages.${system}.python310Packages.Babel
                inputs.djangoPackage.legacyPackages.${system}.python311Packages.django_4
                inputs.djangoBootstrapPackage.legacyPackages.${system}.python310Packages.django-bootstrap4
                inputs.djangoCkeditorPackage.legacyPackages.${system}.python310Packages.django-ckeditor
                inputs.djangoCrispyFormsPackage.legacyPackages.${system}.python310Packages.django-crispy-forms
                inputs.djangoJsAssetPackage.legacyPackages.${system}.python310Packages.django-js-asset
                inputs.djangoLocalflavorPackage.legacyPackages.${system}.python310Packages.django-localflavor
                inputs.djangoPhoneNumberFieldPackage.legacyPackages.${system}.python310Packages.django-phonenumber-field
                inputs.mysqlclientPackage.legacyPackages.${system}.python310Packages.mysqlclient
                inputs.phonenumbersPackage.legacyPackages.${system}.python310Packages.phonenumbers
                inputs.pillowPackage.legacyPackages.${system}.python310Packages.pillow
                inputs.stdnumPackage.legacyPackages.${system}.python310Packages.python-stdnum
                inputs.pytzPackage.legacyPackages.${system}.python310Packages.pytz
                inputs.reportlabPackage.legacyPackages.${system}.python310Packages.reportlab
                inputs.djangoExtentionsPackage.legacyPackages.${system}.python310Packages.django-extensions
                inputs.werkzeugPackage.legacyPackages.${system}.python310Packages.werkzeug
                inputs.pyOpenSSLPackage.legacyPackages.${system}.python310Packages.pyopenssl
            ];
        };

    };
}
