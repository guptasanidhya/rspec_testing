class ConsolesController <ApplicationController

    def index
        # consoles=[
        #     'NES',
        #     'SNES',
        #     'Wii',
        #     'Genesis',
        #     'Xbox',
        #     'Switch',
        #     'PS1',
        #     'PS2'
        # ]
# render(json: {'consoles' => consoles})
        consoles =[
            {name:'NES', manufacturer: 'Nintendo'},
            {name:'SNES', manufacturer: 'Nintendo'},
            {name:'Wii', manufacturer: 'Nintendo'},
            {name:'Genesis', manufacturer: 'Sega'},
            {name:'Xbox', manufacturer: 'Microsoft'},
            {name:'Switch', manufacturer: 'Nintendo'},
            {name:'PS1', manufacturer: 'Sony'},
            {name:'PS2', manufacturer: 'Sony'}     
        ]

        if params[:manufacturer].present?
            consoles=consoles.select do |console|
                console[:manufacturer]==params[:manufacturer]
            end
        end
        

        render(json: {'consoles'=> consoles.map {|console| console[:name]}})
    end
end