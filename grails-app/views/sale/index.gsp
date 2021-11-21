<%--
  Created by IntelliJ IDEA.
  User: octaglory-dev
  Date: 11/17/2021
  Time: 2:50 PM
--%>

<%@ page contentType="text/html;charset=UTF-8" %>
<html>
<head>
    <meta name="layout" content="main"/>
    <title>Sale</title>

    <style>

    </style>
</head>

<body>
    <div id="sale-root"></div>
    <script type="text/babel">
        const {Form, Grid, Input, Dropdown, Button} = semanticUIReact;

        const friendOptions = [
            {
                key: 'Jenny Hess',
                text: 'Jenny Hess',
                value: 'Jenny Hess',
            },
            {
                key: 'Elliot Fu',
                text: 'Elliot Fu',
                value: 'Elliot Fu',
            },
            {
                key: 'Stevie Feliciano',
                text: 'Stevie Feliciano',
                value: 'Stevie Feliciano',
            },
            {
                key: 'Christian',
                text: 'Christian',
                value: 'Christian',
            },
            {
                key: 'Matt',
                text: 'Matt',
                value: 'Matt',
            },
            {
                key: 'Justen Kitsune',
                text: 'Justen Kitsune',
                value: 'Justen Kitsune',
            },
        ]

        function Sale(){

            return(
                <div style={{padding: "15px", background: "#eeeeee"}}>
                    <Form className="ui form mini">
                        <div className="block-1"
                             style={{
                                 background: "white",
                                 borderRadius: "10px",
                                 boxShadow: "0px 1px 2px rgba(0, 0, 0, 0.25)",
                                 padding:"15px",
                                 margin:"15px 0px 0px 0px"
                             }}>
                            <Grid>
                                <Grid.Column computer={10}>
                                    <Grid>
                                        <Grid.Column computer={3}><small>Customer Name: </small> </Grid.Column>
                                        <Grid.Column computer={13}>
                                            <Grid>
                                                <Grid.Column computer={10}>
                                                    <Dropdown
                                                        placeholder='Select Friend'
                                                        fluid
                                                        clearable
                                                        search
                                                        selection
                                                        options={friendOptions}
                                                        style={{maxHeight:"15px"}}
                                                    />
                                                </Grid.Column>
                                                <Grid.Column computer={3}><button
                                                    style={{
                                                        background: "#F2C94C",
                                                        color:"white",
                                                        border:"none",
                                                        width:"100%",
                                                        height:"30px",
                                                        fontSize:"12px",
                                                        borderRadius:"5px"
                                                    }}>Add Customer</button>
                                                </Grid.Column>
                                                <Grid.Column computer={3}><button
                                                    style={{
                                                        background: "#F2C94C",
                                                        color:"white",
                                                        border:"none",
                                                        width:"100%",
                                                        height:"30px",
                                                        fontSize:"12px",
                                                        borderRadius:"5px"
                                                    }}>Referred By</button>
                                                </Grid.Column>

                                            </Grid>
                                        </Grid.Column>

                                    </Grid>
                                    <Grid>
                                        <Grid.Column computer={3}><small>Note: </small> </Grid.Column>
                                        <Grid.Column computer={13}><Input placeholder='mysite.com' fluid /></Grid.Column>
                                    </Grid>
                                </Grid.Column>
                                <Grid.Column computer={6}>
                                    <Grid>
                                        <Grid.Column computer={3}><small>Date </small> </Grid.Column>
                                        <Grid.Column computer={13}><Input placeholder='mysite.com' fluid /></Grid.Column>
                                    </Grid>
                                    <Grid>
                                        <Grid.Column computer={3}><small>Invoice Type:  </small> </Grid.Column>
                                        <Grid.Column computer={13}><Input placeholder='mysite.com' fluid /></Grid.Column>
                                    </Grid>
                                </Grid.Column>
                            </Grid>
                        </div>
                        <div className="block-2"
                             style={{
                                 background: "white",
                                 borderRadius: "10px",
                                 boxShadow: "0px 1px 2px rgba(0, 0, 0, 0.25)",
                                 padding:"15px",
                                 margin:"15px 0px 0px 0px"
                             }}>
                            <Grid>

                                <Grid.Column computer={5}>
                                    <div style={{
                                        display:"flex",
                                        alignItem:"center",
                                        justifyContent:"center",
                                        background: "rgba(45, 156, 219, 0.2)",
                                        borderRadius: "10px",
                                        color: "#2D9CDB",
                                        padding:"5px 0px"
                                    }}>
                                        <p>Net Pay Amount</p>
                                        <h1 style={{color: "#2D9CDB"}}>1250</h1>
                                    </div>
                                </Grid.Column>
                                <Grid.Column computer={6}>
                                    <div style={{
                                        display:"flex",
                                        alignItem:"center",
                                        justifyContent:"center",
                                        background: "rgba(39, 174, 96, 0.2)",
                                        borderRadius: "10px",
                                        color: "#27AE60",
                                        padding:"5px 0px"
                                    }}>
                                        <p>Net Pay Amount</p>
                                        <h1 style={{color: "#27AE60"}}>1250</h1>
                                    </div>
                                </Grid.Column>
                                <Grid.Column computer={5}>
                                    <div style={{
                                        display:"flex",
                                        alignItem:"center",
                                        justifyContent:"center",
                                        background: "rgba(242, 153, 74, 0.2)",
                                        borderRadius: "10px",
                                        color: "#F2994A",
                                        padding:"5px 0px"
                                    }}>
                                        <p>Net Pay Amount</p>
                                        <h1 style={{color: "#F2994A"}}>1250</h1>
                                    </div>
                                </Grid.Column>

                            </Grid>
                        </div>
                        <Grid>
                            <Grid.Column computer={10}>
                                <div className="block-3"
                                     style={{
                                         background: "white",
                                         borderRadius: "10px",
                                         boxShadow: "0px 1px 2px rgba(0, 0, 0, 0.25)",
                                         padding:"15px",
                                         margin:"15px 0px 0px 0px"
                                     }}>
                                    <Grid>
                                        <Grid.Column computer={10}>
                                            <Grid>
                                                <Grid.Column computer={3}><small>Customer Name: </small> </Grid.Column>
                                                <Grid.Column computer={13}>
                                                    <Grid>
                                                        <Grid.Column computer={10}>
                                                            <Dropdown
                                                                placeholder='Select Friend'
                                                                fluid
                                                                clearable
                                                                search
                                                                selection
                                                                options={friendOptions}
                                                                style={{maxHeight:"15px"}}
                                                            />
                                                        </Grid.Column>
                                                        <Grid.Column computer={3}><button
                                                            style={{
                                                                background: "#F2C94C",
                                                                color:"white",
                                                                border:"none",
                                                                width:"100%",
                                                                height:"30px",
                                                                fontSize:"12px",
                                                                borderRadius:"5px"
                                                            }}>Add Customer</button>
                                                        </Grid.Column>
                                                        <Grid.Column computer={3}><button
                                                            style={{
                                                                background: "#F2C94C",
                                                                color:"white",
                                                                border:"none",
                                                                width:"100%",
                                                                height:"30px",
                                                                fontSize:"12px",
                                                                borderRadius:"5px"
                                                            }}>Referred By</button>
                                                        </Grid.Column>

                                                    </Grid>
                                                </Grid.Column>

                                            </Grid>
                                            <Grid>
                                                <Grid.Column computer={3}><small>Note: </small> </Grid.Column>
                                                <Grid.Column computer={13}><Input placeholder='mysite.com' fluid /></Grid.Column>
                                            </Grid>
                                        </Grid.Column>
                                        <Grid.Column computer={6}>
                                            <Grid>
                                                <Grid.Column computer={3}><small>Date </small> </Grid.Column>
                                                <Grid.Column computer={13}><Input placeholder='mysite.com' fluid /></Grid.Column>
                                            </Grid>
                                            <Grid>
                                                <Grid.Column computer={3}><small>Invoice Type:  </small> </Grid.Column>
                                                <Grid.Column computer={13}><Input placeholder='mysite.com' fluid /></Grid.Column>
                                            </Grid>
                                        </Grid.Column>
                                    </Grid>
                                </div>
                            </Grid.Column>
                            <Grid.Column computer={6}>
                                <div className="block-1"
                                     style={{
                                         background: "white",
                                         borderRadius: "10px",
                                         boxShadow: "0px 1px 2px rgba(0, 0, 0, 0.25)",
                                         padding:"15px",
                                         margin:"15px 0px 0px 0px"
                                     }}>
                                    <Grid>
                                        <Grid.Column computer={10}>
                                            <Grid>
                                                <Grid.Column computer={3}><small>Customer Name: </small> </Grid.Column>
                                                <Grid.Column computer={13}>
                                                    <Grid>
                                                        <Grid.Column computer={10}>
                                                            <Dropdown
                                                                placeholder='Select Friend'
                                                                fluid
                                                                clearable
                                                                search
                                                                selection
                                                                options={friendOptions}
                                                                style={{maxHeight:"15px"}}
                                                            />
                                                        </Grid.Column>
                                                        <Grid.Column computer={3}><button
                                                            style={{
                                                                background: "#F2C94C",
                                                                color:"white",
                                                                border:"none",
                                                                width:"100%",
                                                                height:"30px",
                                                                fontSize:"12px",
                                                                borderRadius:"5px"
                                                            }}>Add Customer</button>
                                                        </Grid.Column>
                                                        <Grid.Column computer={3}><button
                                                            style={{
                                                                background: "#F2C94C",
                                                                color:"white",
                                                                border:"none",
                                                                width:"100%",
                                                                height:"30px",
                                                                fontSize:"12px",
                                                                borderRadius:"5px"
                                                            }}>Referred By</button>
                                                        </Grid.Column>

                                                    </Grid>
                                                </Grid.Column>

                                            </Grid>
                                            <Grid>
                                                <Grid.Column computer={3}><small>Note: </small> </Grid.Column>
                                                <Grid.Column computer={13}><Input placeholder='mysite.com' fluid /></Grid.Column>
                                            </Grid>
                                        </Grid.Column>
                                        <Grid.Column computer={6}>
                                            <Grid>
                                                <Grid.Column computer={3}><small>Date </small> </Grid.Column>
                                                <Grid.Column computer={13}><Input placeholder='mysite.com' fluid /></Grid.Column>
                                            </Grid>
                                            <Grid>
                                                <Grid.Column computer={3}><small>Invoice Type:  </small> </Grid.Column>
                                                <Grid.Column computer={13}><Input placeholder='mysite.com' fluid /></Grid.Column>
                                            </Grid>
                                        </Grid.Column>
                                    </Grid>
                                </div>

                            </Grid.Column>

                        </Grid>
                        <div className="block-1"
                             style={{
                                 background: "white",
                                 borderRadius: "10px",
                                 boxShadow: "0px 1px 2px rgba(0, 0, 0, 0.25)",
                                 padding:"15px",
                                 margin:"15px 0px 0px 0px"
                             }}>
                            <Grid>
                                <Grid.Column computer={10}>
                                    <Grid>
                                        <Grid.Column computer={3}><small>Customer Name: </small> </Grid.Column>
                                        <Grid.Column computer={13}>
                                            <Grid>
                                                <Grid.Column computer={10}>
                                                    <Dropdown
                                                        placeholder='Select Friend'
                                                        fluid
                                                        clearable
                                                        search
                                                        selection
                                                        options={friendOptions}
                                                        style={{maxHeight:"15px"}}
                                                    />
                                                </Grid.Column>
                                                <Grid.Column computer={3}><button
                                                    style={{
                                                        background: "#F2C94C",
                                                        color:"white",
                                                        border:"none",
                                                        width:"100%",
                                                        height:"30px",
                                                        fontSize:"12px",
                                                        borderRadius:"5px"
                                                    }}>Add Customer</button>
                                                </Grid.Column>
                                                <Grid.Column computer={3}><button
                                                    style={{
                                                        background: "#F2C94C",
                                                        color:"white",
                                                        border:"none",
                                                        width:"100%",
                                                        height:"30px",
                                                        fontSize:"12px",
                                                        borderRadius:"5px"
                                                    }}>Referred By</button>
                                                </Grid.Column>

                                            </Grid>
                                        </Grid.Column>

                                    </Grid>
                                    <Grid>
                                        <Grid.Column computer={3}><small>Note: </small> </Grid.Column>
                                        <Grid.Column computer={13}><Input placeholder='mysite.com' fluid /></Grid.Column>
                                    </Grid>
                                </Grid.Column>
                                <Grid.Column computer={6}>
                                    <Grid>
                                        <Grid.Column computer={3}><small>Date </small> </Grid.Column>
                                        <Grid.Column computer={13}><Input placeholder='mysite.com' fluid /></Grid.Column>
                                    </Grid>
                                    <Grid>
                                        <Grid.Column computer={3}><small>Invoice Type:  </small> </Grid.Column>
                                        <Grid.Column computer={13}><Input placeholder='mysite.com' fluid /></Grid.Column>
                                    </Grid>
                                </Grid.Column>
                            </Grid>
                        </div>
                    </Form>

                </div>
            )
        }
        ReactDOM.render(<Sale />, document.getElementById('sale-root'))
    </script>
</body>
</html>