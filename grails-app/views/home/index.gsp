<!doctype html>
<html>
<head>
    <meta name="layout" content="main"/>
    <title>Welcome to Grails</title>
</head>
<body>
<div id="mydiv"></div>

<script type="text/babel">
    const {Label, Dropdown, Menu, Accordion, Icon, Button, Form, Checkbox} = semanticUIReact;
    const {Layout} = antd;
    const {useState, useEffect} = React;
    const axios = axios;

    const getData = async (setter) => {
        try {
            const res = await axios.get("http://localhost:8080/home/dropdownOptions");
            setter(res?.data.data)
        } catch (error) {
            console.log(error)
        }
    }
    const getModules = async (setter) => {
        try {
            const res = await axios.get("http://localhost:8080/home/moduleList");
            setter(res?.data.data)
        } catch (error) {
            console.log(error)
        }
    }

    const geSideMenu = async (setter, dis) => {
        try {
            const res = await axios.get(`http://localhost:8080/home/menuList?moduleName=`+dis);
            setter(res?.data?.menuList)
        } catch (error) {
            console.log(error)
        }
    }
    const sendFormData = async (data) => {
        try {
            const res = await axios.post("http://localhost:8080/home/save",
                data,
                {
                    headers: {
                        contentType: 'application/json; charset=utf-8',
                        dataType: 'json',
                    }
                }
            );
            console.log(res)
        } catch (error) {
            console.log(error)
        }
    }
    function Hello() {
        const [name, setName] = useState("editorials");
        const [data, setData] = useState([]);
        const [modules, setModules] = useState([])
        const [sideMenu, setSideMenu] = useState([])
        const [formData, setFormData] = useState({name:"", password:""})
        const [index, setIndex] = useState(-1)
        useEffect(() => {
            getData(setData);
            getModules(setModules);
            geSideMenu(setSideMenu, "Home")
        }, [])
        const handleClick = (e, {name}) => {
            setName(name);
            geSideMenu(setSideMenu, name);
            console.log(sideMenu)

        };
        const handleMenuOpen = (e, titleProps) => {
            if(index === titleProps.index){
                setIndex(-1)
            } else{
                setIndex(titleProps.index)
            }
        }

        const handleNameChange = (e => {
            setFormData({...formData, name: e.target.value})
        })
        const handlePassChange = (e => {
            setFormData({...formData, password: e.target.value})
        })

        const handleSubmit = (e => {
            e.preventDefault();
            console.log(JSON.stringify({formData}));
            sendFormData(JSON.stringify({formData}));
        })
        return (
            <Layout>
                <Layout.Header style={{
                    background: "#2B5D62",
                    display: "flex",
                    position: "relative",
                    alignItems: "center",
                }}>
                    <div
                        style={{
                            display: "flex",
                            alignItems: "center",
                        }}
                    >
                        <div
                            className="branch"
                            style={{
                                display: "flex",
                                flexDirection: "column",
                                justifyContent: "center",
                                alignItems: "center",
                            }}
                        >
                            <h2
                                style={{
                                    color: "white",
                                    marginBottom: "0px",
                                    borderBottom: "1px solid white",
                                }}
                            >
                                A.K. Azad
                            </h2>
                            <small
                                style={{
                                    color: "white",
                                    lineHeight: "12px",
                                    fontSize: "10px",
                                }}
                            >
                                Branch: Main
                            </small>
                        </div>

                    </div>
                    <Menu secondary style={{marginLeft: "25px"}}>
                        {modules.map(module => (
                            <Menu.Item
                                style={{color: "white"}}
                                name={module.name}
                                active={name === module.name}
                                onClick={handleClick}
                            >
                                {module.name}
                            </Menu.Item>
                        ))}
                    </Menu>
                    <div style={{position:"absolute", right:"35px"}}>
                        <Label color="green">Expires in 4 days</Label>
                        <Dropdown text='Dropdown' options={data} />
                    </div>

                </Layout.Header>
                <Layout>
                    <Layout.Sider>
                        <Accordion styled>

                            {sideMenu.map((menu, i) => (
                                <>
                                <Accordion.Title
                                    active={index == i}
                                    index={i}
                                    onClick={handleMenuOpen}
                                >
                                    <Icon name='dropdown' />
                                    {menu.menuItem}
                                </Accordion.Title>
                                <Accordion.Content active={index == i}>
                                <p>
                                A dog is a type of domesticated animal. Known for its loyalty and
                                faithfulness, it can be found as a welcome guest in many households
                                across the world.
                                </p>
                                </Accordion.Content>
                                </>
                            ))}
                        </Accordion>
                    </Layout.Sider>
                    <Layout.Content>
                                <Form style={{padding:"20px"}} onSubmit={handleSubmit}>
                                    <Form.Field>
                                        <label>First Name</label>
                                        <input placeholder='First Name' value={formData.name} onChange={handleNameChange} name="name" />
                                    </Form.Field>
                                    <Form.Field>
                                        <label>Password</label>
                                        <input placeholder='Password' type="password" value={formData.password} onChange={handlePassChange} name="password" />
                                    </Form.Field>
                                    <Button type='submit'>Submit</Button>
                                </Form>
                    </Layout.Content>
                </Layout>
                <Layout.Footer>Footer</Layout.Footer>
            </Layout>
        );
    }
    ReactDOM.render(<Hello />, document.getElementById('mydiv'))
</script>


</body>
</html>
