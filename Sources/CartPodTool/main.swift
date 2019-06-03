import Foundation
import CartPodCore
import Commandant

let registry = CommandRegistry<CartPodError>()
registry.register(VersionCommand())

let helpCommand = HelpCommand(registry: registry)
registry.register(helpCommand)

registry.main(defaultVerb: helpCommand.verb) { error in
    fputs(error.description + "\n", stderr)
}

