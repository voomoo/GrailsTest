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

%{--    <style>--}%
%{--        div.computer.column{--}%
%{--            padding: 0.7rem 1rem !important;--}%
%{--        }--}%
%{--    </style>--}%
</head>

<body>
    <div id="sale-root"></div>
    <script type="text/babel">
        const {useState, useEffect} = React;
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

        const invoiceType = [
            {
                key: '1',
                text: 'Invoice',
                value: 'Invoice',
            },
            {
                key: '2',
                text: 'POS',
                value: 'POS',
            },
            {
                key: '3',
                text: 'Quatation',
                value: 'Quatation',
            },
            {
                key: '4',
                text: 'Installment',
                value: 'Installment',
            },
        ]

        const salesType = [
            {
                key: '1',
                text: 'Retail',
                value: 'Retail',
            },
            {
                key: '2',
                text: 'Wholesale',
                value: 'Wholesale',
            }
        ]

        const deliveryType = [
            {
                key: '1',
                text: 'Single',
                value: 'Single',
            },
            {
                key: '2',
                text: 'Partial',
                value: 'Partial',
            }
        ]

        const deliveryStatus = [
            {
                key: '1',
                text: 'Delivered',
                value: 'Delivered',
            },
            {
                key: '2',
                text: 'Un-Delivered',
                value: 'undelivered',
            }
        ]

        function Sale(){
            const [date, setDate] = useState(new Date().toISOString().substring(0, 10))
            const [showArea, setShowArea] = useState(false)
            const [invoiceTypeValue, setInvoiceTypeValue] = useState("")
            const [deliveryStatusValue, setdeliveryStatusValue] = useState("")
            useEffect(() => {
                if(invoiceTypeValue ==="Invoice"){
                    setShowArea(true)
                }
            }, [invoiceTypeValue])
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
                                        <Grid.Column computer={2}><small>Customer Name: </small> </Grid.Column>
                                        <Grid.Column computer={14}>
                                            <Grid>
                                                <Grid.Column style={{padding:"10px"}} computer={13}>
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
                                                <Grid.Column style={{padding:"10px"}} computer={3}>
                                                    <button
                                                    style={{
                                                        background: "#27AE60",
                                                        color:"white",
                                                        border:"none",
                                                        width:"100%",
                                                        height:"30px",
                                                        fontSize:"12px",
                                                        borderRadius:"5px"
                                                    }}
                                                    color="green"
                                                    >
                                                        Add Customer
                                                    </button>
                                                </Grid.Column>
                                            </Grid>
                                        </Grid.Column>
                                    </Grid>
                                    <Grid>
                                        <Grid.Column computer={2}><small>Note: </small> </Grid.Column>
                                        <Grid.Column computer={14} style={{padding:"8px 10px"}}><Input placeholder='mysite.com' fluid /></Grid.Column>
                                    </Grid>
                                </Grid.Column>
                                <Grid.Column computer={6}>
                                    <Grid>
                                        <Grid.Column computer={3}><small>Date: </small> </Grid.Column>
                                        <Grid.Column computer={13} style={{padding:"8px 10px"}}>
                                            <Input
                                                value={date}
                                                type="date"
                                                placeholder='mysite.com'
                                                fluid
                                                onChange={(e) => {
                                                    setDate(e.target.value)
                                                }}
                                            />
                                        </Grid.Column>
                                    </Grid>
                                    <Grid>
                                        <Grid.Column computer={3}><small>Invoice Type:  </small> </Grid.Column>
                                        <Grid.Column computer={13} style={{padding:"8px 10px"}}>
                                        <Dropdown
                                            placeholder='Invoice Type'
                                            fluid
                                            clearable
                                            search
                                            selection
                                            onChange={(e,data) => {
                                                setInvoiceTypeValue(data.value);

                                            }}
                                            options={invoiceType}
                                            defaultValue={invoiceType[1].value}
                                            style={{maxHeight:"15px"}}
                                        />
                                        </Grid.Column>
                                    </Grid>
                                </Grid.Column>
                            </Grid>

                            %{--test--}%
                            {showArea ?
                            <>
                            <Grid style={{marginTop:"35px"}}>

                                <Grid.Column computer={5}>

                                    <Grid>
                                        <Grid.Column computer={4}><small>Salesman:  </small> </Grid.Column>
                                        <Grid.Column computer={12} style={{padding:"8px 10px"}}><Input placeholder='mysite.com' fluid /></Grid.Column>
                                    </Grid>
                                </Grid.Column>
                                <Grid.Column computer={6}>

                                    <Grid>
                                        <Grid.Column computer={4}><small>Sales Type:  </small> </Grid.Column>
                                        <Grid.Column computer={12} style={{padding:"8px 10px"}}>
                                        <Dropdown
                                            placeholder='Select Friend'
                                            fluid
                                            clearable
                                            search
                                            selection
                                            options={salesType}
                                            defaultValue={salesType[0].value}
                                            style={{maxHeight:"15px"}}
                                        />
                                        </Grid.Column>
                                    </Grid>
                                </Grid.Column>
                                <Grid.Column computer={5}>

                                    <Grid>
                                        <Grid.Column computer={4}><small>Project/Cost Center:  </small> </Grid.Column>
                                        <Grid.Column computer={12} style={{padding:"8px 10px"}}><Input placeholder='mysite.com' fluid /></Grid.Column>
                                    </Grid>
                                </Grid.Column>
                                <Grid.Column computer={5}>

                                    <Grid>
                                        <Grid.Column computer={4}><small>Customer Invoice:  </small> </Grid.Column>
                                        <Grid.Column computer={12} style={{padding:"8px 10px"}}><Input placeholder='mysite.com' fluid /></Grid.Column>
                                    </Grid>
                                </Grid.Column>
                                <Grid.Column computer={6}>

                                    <Grid>
                                        <Grid.Column computer={4}><small>P.O / S.O No.:  </small> </Grid.Column>
                                        <Grid.Column computer={12} style={{padding:"8px 10px"}}><Input placeholder='mysite.com' fluid /></Grid.Column>
                                    </Grid>
                                </Grid.Column>

                            </Grid>
                            {invoiceTypeValue === "Invoice" ?
                                <Grid style={{marginTop:"35px"}}>

                                <Grid.Column computer={5}>

                                    <Grid>
                                        <Grid.Column computer={4}><small>Delivery Type:  </small> </Grid.Column>
                                        <Grid.Column computer={12} style={{padding:"8px 10px"}}>
                                        <Dropdown
                                            placeholder='Select Friend'
                                            fluid
                                            clearable
                                            search
                                            selection
                                            options={deliveryType}
                                            defaultValue = {deliveryType[0].value}
                                            style={{maxHeight:"15px"}}
                                        />
                                        </Grid.Column>
                                    </Grid>
                                </Grid.Column>
                                <Grid.Column computer={6}>

                                    <Grid>
                                        <Grid.Column computer={4}><small>Delivery Status:  </small> </Grid.Column>
                                        <Grid.Column computer={12} style={{padding:"8px 10px"}}>
                                        <Dropdown
                                            placeholder='Select Friend'
                                            fluid
                                            clearable
                                            search
                                            selection
                                            onChange={(e, data) => setdeliveryStatusValue(data.value)}
                                            defaultValue = {deliveryStatus[1].value}
                                            options={deliveryStatus}
                                            style={{maxHeight:"15px"}}
                                        />
                                        </Grid.Column>
                                    </Grid>
                                </Grid.Column>


                            </Grid>
                            : ""}

                            {(invoiceTypeValue === "Invoice" && deliveryStatusValue === "Delivered") ?
                                <Grid style={{marginTop:"35px"}}>

                                <Grid.Column computer={5}>

                                    <Grid>
                                        <Grid.Column computer={4}><small>Delivery Partner:  </small> </Grid.Column>
                                        <Grid.Column computer={12} style={{padding:"8px 10px"}}><Input placeholder='mysite.com' fluid /></Grid.Column>
                                    </Grid>
                                </Grid.Column>
                                <Grid.Column computer={6}>

                                    <Grid>
                                        <Grid.Column computer={4}><small>Tracking No.:  </small> </Grid.Column>
                                        <Grid.Column computer={12} style={{padding:"8px 10px"}}><Input placeholder='mysite.com' fluid /></Grid.Column>
                                    </Grid>
                                </Grid.Column>
                                <Grid.Column computer={5}>

                                    <Grid>
                                        <Grid.Column computer={4}><small>Note:  </small> </Grid.Column>
                                        <Grid.Column computer={12} style={{padding:"8px 10px"}}><Input placeholder='mysite.com' fluid /></Grid.Column>
                                    </Grid>
                                </Grid.Column>
                                <Grid.Column computer={5}>

                                    <Grid>
                                        <Grid.Column computer={4}><small>Delivery By:  </small> </Grid.Column>
                                        <Grid.Column computer={12} style={{padding:"8px 10px"}}><Input placeholder='mysite.com' fluid /></Grid.Column>
                                    </Grid>
                                </Grid.Column>


                            </Grid>
                             : ""}

                            </>
                             : ""
                            }
                            <div style={{display: "flex", justifyContent:"flex-end"}}>
                            <button
                                style={{
                                    background: "#F2C94C",
                                    color: "white",
                                    border: "none",
                                    padding: "5px 10px",
                                    borderRadius:"5px",
                                    marginTop:"15px",
                                }}
                                onClick={() => {
                                    setShowArea(!showArea)
                                }}
                            >
                                Additional Options
                            </button>
                            </div>
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
                                        <p>Net Amount</p>
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
                                        <p>Previous Due</p>
                                        <h1 style={{color: "#27AE60"}}>250</h1>
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
                                        <h1 style={{color: "#F2994A"}}>1500</h1>
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
                                        <Grid.Column computer={16}>
                                            <Grid>
                                                <Grid.Column computer={2}><small>Product Name: </small> </Grid.Column>
                                                <Grid.Column computer={14}>
                                                    <Grid>
                                                        <Grid.Column computer={7} style={{padding: "10px"}}>
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
                                                        <Grid.Column computer={3} style={{padding: "10px"}}><button
                                                            style={{
                                                                background: "#27AE60",
                                                                color:"white",
                                                                border:"none",
                                                                width:"100%",
                                                                height:"30px",
                                                                fontSize:"12px",
                                                                borderRadius:"5px"
                                                            }}>View Stock</button>
                                                        </Grid.Column>
                                                        <Grid.Column computer={3} style={{padding: "10px"}}><button
                                                            style={{
                                                                background: "#F2C94C",
                                                                color:"white",
                                                                border:"none",
                                                                width:"100%",
                                                                height:"30px",
                                                                fontSize:"12px",
                                                                borderRadius:"5px"
                                                            }}>Buy Price</button>
                                                        </Grid.Column>
                                                        <Grid.Column computer={3} style={{padding: "10px"}}><button
                                                            style={{
                                                                background: "#2D9CDB",
                                                                color:"white",
                                                                border:"none",
                                                                width:"100%",
                                                                height:"30px",
                                                                fontSize:"12px",
                                                                borderRadius:"5px"
                                                            }}>Add/Edit</button>
                                                        </Grid.Column>

                                                    </Grid>
                                                </Grid.Column>

                                            </Grid>

                                        </Grid.Column>
                                        <Grid.Column computer={8}>
                                            <Grid>
                                                <Grid.Column computer={3}><small>CTN / Bag: </small> </Grid.Column>
                                                <Grid.Column computer={13} style={{padding: "8px 10px"}}><Input placeholder='mysite.com' fluid /></Grid.Column>
                                            </Grid>
                                            <Grid>
                                                <Grid.Column computer={3}><small>Discount:  </small> </Grid.Column>
                                                <Grid.Column computer={13} style={{padding: "10px"}}><Input placeholder='mysite.com' fluid /></Grid.Column>
                                            </Grid>
                                        </Grid.Column>
                                        <Grid.Column computer={8}>
                                            <Grid>
                                                <Grid.Column computer={3}><small>Unit:  </small> </Grid.Column>
                                                <Grid.Column computer={13} style={{padding: "10px"}}><Input placeholder='mysite.com' fluid /></Grid.Column>
                                            </Grid>
                                            <Grid>
                                                <Grid.Column computer={3}><small>Total Quantity: </small> </Grid.Column>
                                                <Grid.Column computer={13} style={{padding: "10px"}}><Input placeholder='mysite.com' fluid /></Grid.Column>
                                            </Grid>
                                        </Grid.Column>
                                    </Grid>
                                </div>
                            </Grid.Column>
                            <Grid.Column computer={6}>
                                <div className="block-4"
                                     style={{
                                         background: "white",
                                         borderRadius: "10px",
                                         boxShadow: "0px 1px 2px rgba(0, 0, 0, 0.25)",
                                         padding:"15px",
                                         margin:"15px 0px 0px 0px"
                                     }}>
                                    <Grid>
                                        <Grid.Column computer={16}>
                                            <Grid>
                                                <Grid.Column computer={3}><small>Net Pay Amount: </small> </Grid.Column>
                                                <Grid.Column computer={13} style={{padding: "10px"}}>
                                                    <Grid>
                                                        <Grid.Column computer={16}>
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
                                                    </Grid>
                                                </Grid.Column>

                                            </Grid>
                                            <Grid>
                                                <Grid.Column computer={3}><small>Payment Amount: </small> </Grid.Column>
                                                <Grid.Column computer={13} style={{padding: "8px 10px"}}><Input placeholder='mysite.com' fluid /></Grid.Column>
                                            </Grid>
                                        </Grid.Column>
                                        <Grid.Column computer={16}>
                                            <Grid>
                                                <Grid.Column computer={3}><small>Payment Type: </small> </Grid.Column>
                                                <Grid.Column computer={13} style={{padding: "8px 10px"}}><Input placeholder='mysite.com' fluid /></Grid.Column>
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