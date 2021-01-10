package main

import (
	"log"
	"os/exec"
)

func main() {
	cmd := exec.Command("defaults", "write", "com.apple.dock", "autohide", "-bool", "yes")
	err := cmd.Run()
	if err != nil {
		log.Fatal(err)
	}

	// Install Homebrew
	// - homebrew install includes installing Xcode Command Line Tools

	// Any Homebrew fixes

	// brew install

	// brew cask install

	// configure MacOS
	// - general: auto appearance
	// - security: allow apps
	// - dock: hide
	// - dock: size
	// - dock: "scale" window minimization
	// - dock: hide recent applications
	// - menu bar: show battery
	// - menu bar: show pct
	// - trackpad: natural scroll
	// - trackpad: light click
	// - trackpad: disable force click
	// - display: sunset/sunrise night shift
	// - display: night shift temperature

	// download/sync config
	// - clone dotfiles
	// - rcup
	// - manual linking
	// -- VSCode settings
	// -- iTerm2 settings

	// optional: github ssh keys
}
