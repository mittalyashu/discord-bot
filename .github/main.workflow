workflow "Zeit" {
  on = "push"
  resolves = ["Deploy"]
}

action "Deploy" {
  uses = "actions/zeit-now@5c51b26db987d15a0133e4c760924896b4f1512f"
  secrets = [
    "ZEIT_TOKEN",
    "DISCORD_BOT_TOKEN",
  ]
}
