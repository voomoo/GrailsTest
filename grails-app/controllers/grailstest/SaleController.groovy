package grailstest

import grails.converters.JSON

class SaleController {

    def index() {
        render(view: 'index')
    }

    def cards() {
        List options = new ArrayList()
        options.add([ title: "Title 1", value: 1 ])
        options.add([ title: "Title 2", value: 2 ])
        options.add([ title: "Title 3", value: 3 ])
        options.add([ title: "Title 4", value: 4 ])
        options.add([ title: "Title 5", value: 1000 ])

        def model = [data: options]
        String responseStr = model as JSON
        render responseStr
    }
}
