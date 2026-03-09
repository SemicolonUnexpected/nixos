{ ... }:
{
  # Define a user account. Don't forget to set a password with ‘passwd’.
  users.users.mgrac = {
    isNormalUser = true;
    extraGroups = [
      "wheel"
      "networkmanager"
    ]; # Enable ‘sudo’ for the user.
  };

  nix.settings.trusted-users = [
    "root"
    "mgrac"
  ];
}
