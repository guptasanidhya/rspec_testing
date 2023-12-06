class ConsolesController <ApplicationController

    def index
        consoles=[
            'NES',
            'SNES',
            'Wii',
            'Genesis',
            'Xbox',
            'Switch',
            'PS1',
            'PS2'
        ]
        render(json: {'consoles' => consoles})
    end
end