let
  loki = "ssh-ed25519 AAAAC3NzaC1lZDI1NTE5AAAAINYfpvLVNTXa6xO5UMwrwAiauUtBXO6gbyL1EJbHE59O";
  angelus = "ssh-ed25519 AAAAC3NzaC1lZDI1NTE5AAAAIC0cE+P5UIk/pKjLa5jbK6+r44W6c44yUxbaXLqE59Gj";
  in {
  "secret1.age".publicKeys = [loki angelus];
  "angelus-secrets.age".publicKeys = [loki angelus];
}
