package grailstest

import grails.converters.JSON

class HomeController {

    def index() {
        String yourName = "some name"
        render(view: 'index', model: [yourname: yourName])
    }
    def menuList() {
        String moduleName = params.moduleName
        List itemList = new ArrayList()
        itemList.add([menuItem: 'Dashboard', urlLink: 'home', icon:'fa fa-box'])
        if (moduleName == 'Home') {
            itemList.add([menuItem: 'User', urlLink: 'home#purchase', icon:'fa fa-box'])
            itemList.add([menuItem: 'Authentication', urlLink: 'home#expense', icon:'fa fa-box'])
        } else if (moduleName == 'Sales') {
            itemList.add([menuItem: 'Sales', urlLink: 'home#purchase', icon:'fa fa-box'])
            itemList.add([menuItem: 'purchase', urlLink: 'home#purchase', icon:'fa fa-box'])
        } else if (moduleName == 'Accounts') {
            itemList.add([menuItem: 'Income', urlLink: 'home#purchase', icon:'fa fa-box'])
            itemList.add([menuItem: 'Expense', urlLink: 'home#expense', icon:'fa fa-box'])
        } else if (moduleName == 'Production') {
            itemList.add([menuItem: 'Production', urlLink: 'home#purchase', icon:'fa fa-box'])
        }
        def model = [menuList: itemList, accountModule: null]
        String responseStr = model as JSON
        render responseStr
    }

    def dropdownOptions() {
        List options = new ArrayList()
        options.add([ key: 1, text: 'Account', value: 1 ])
        options.add([ key: 2, text: 'Settings', value: 2 ])
        options.add([ key: 3, text: 'Logout', value: 3 ])
        def model = [data: options]
        String responseStr = model as JSON
        render responseStr
    }

    def moduleList() {
        List modules = new ArrayList()
        modules.add( name: "Home")
        modules.add( name: "Sales")
        modules.add(name: "Accounts")

        def model = [data: modules]
        String responseStr = model as JSON
        render responseStr
    }
    def save() {
        println(params)
        def model = [success: true, message: 'data saved successfully', payload: params]
        String responseStr = model as JSON
        render responseStr
    }
}
