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
</head>

<body>
    <div id="sale-root"></div>

    <script type="text/babel">
        const {useState, useEffect} = React;
        const axois = axios;

        const getCardData = async (setter) => {
            try{
                const res = await axois.get("http://localhost:8080/sale/cards");
                setter(res.data.data);
            }catch (error){
                console.log(error)
            }
        }

        function Sale(){
            const [cards, setCards] = useState([]);
            useEffect(() => {
                getCardData(setCards);
                console.log(cards);
            }, [])
            const handleClick = (i) => alert(`You clicked ${i}`);
            return(
                <div style={{display: "flex"}}>
                    {
                        cards.map((card, i) => (<OverviewCard key={i} style={{margin:"10px", background: "red"}} itemNo={i} cardTitle = {card.title} cardValue={i}/>))
                    }
                </div>
            )
        }

        function OverviewCard({cardTitle, cardValue, style, itemNo}){
            return(
                <div style={style}>
                    <h5>{cardTitle}</h5>
                    <h3>{cardValue}</h3>
                    <button onClick={()=> alert("You Clicked at " + itemNo)}>Click</button>
                </div>
            )
        }
        ReactDOM.render(<Sale />, document.getElementById('new-div'))
    </script>
</body>
</html>