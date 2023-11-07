<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Subscribe to Cinex</title>
<link rel="icon" type="images/x-icon" href="img/logo.png">

</head>

<body>
    <div class="plan-container">
        <div class="header">
            <div class="header1">
                Subscribe to Cinex
            </div>
            <div class="header2"><b>Choose the plan that's right for you. ^_~</b></div>

            <div class="title-container">
                <div class="wrapper">
                <div class="plan-title" style="margin:0;">
                    <div class="plan1" role="button">
                        <div class="plan-wrapper">
                            <div class="plan-parent">
                                <div class="plan-title-title">6 Months</div>
                                <ul class="feature-list">
                                    <div class="item1">Recurring payment. Cancel anytime.</div>
                                    <div class="item1">Video Quality - Good</div>
                                    <div class="item1">Resolution - 720p</div>
                                    <div class="item1">Devices - Any</div>
                                </ul>
                                <div class="price-container">
                                    <div class="plan-price">Rs. 259</div>
                                </div>
                            </div>
                        </div>
                        </div>
                    </div>
                    <div class="final-btn">
                        <div class="plan-select-btn" role="button">
                            <a href="payment_gateway.jsp">Continue With 6 Months</a>
                        </div>
                    </div>
                </div>

                <div class="wrapper">
                <div class="plan-title" style="margin: 0;">
                    <div class="plan1" role="button">
                        <div class="plan-wrapper">
                            <div class="plan-parent">
                                <div class="plan-title-title">12 Months</div>
                                <ul class="feature-list">
                                    <div class="item1">Recurring payment. Cancel anytime.</div>
                                    <div class="item1">Video Quality - Best</div>
                                    <div class="item1">Resolution - 4K+HDR</div>
                                    <div class="item1">Devices - Any</div>
                                </ul>
                                <div class="price-container">
                                    <div class="plan-price">Rs. 599</div>
                                </div>
                            </div>
                        </div>

                    </div>
                </div>
                <div class="final-btn">
                    <div class="plan-select-btn" role="button">
                        <a href="payment_gateway.jsp">Continue With 12 Months</a>
                    </div>
                </div>
            </div>
            </div>
        </div>

    </div>
    <style>

        body{
            background-color: black;
        }

        .wrapper{
            margin:0px 10px 0px 10px;
        }

        .plan-container{
            
            display: flex;
            justify-content: center;
            align-items: center;
            flex-direction: column;
            /* height: auto; */
            /* width:600px; */
            /* top:4rem; */
        }
        
        .header1{
            /* display: flex; */
            color: #fff;
            text-align: center;
            margin: auto;
            font-size: 60px;
            font-weight: 500;
            margin-top: 3.2rem;
            
        }
        .header2{
            color:#b4afaf;
            /* position: relative; */
            /* top: 5rem; */
            /* height: auto; */
            display:flex;
            align-items: center;
            justify-content: center;
            margin-top: 1rem;
            margin-bottom: 2rem;
            font-size: 20px;
            font-weight: 500; 
        }

        .title-container {
        align-items: center;
        display: flex;
        justify-content: center;
        margin-top: 40px;
        max-width: 900px;
        overflow-x: auto;
        }
        .plan-title {
        background-color: rgb(218, 216, 201);
        border: 2px solid red;
        border-radius: 10px;
        margin-right: 40px;
        }
        [role=button]{
            cursor: pointer;
        }
        
        .plan-parent{
            padding: 30px;
        }
        .plan-title-title{
            display: flex;
            align-items: left;
            /* justify-content: center; */
            font-size: 30px;
            margin-top: 20px;
            font-weight:bolder;
            text-decoration: underline;
        }
        .feature-list{
            list-style: none;
            margin-top: 20px;
            text-align: left;
            padding: 0;
        }
        .item1{
            font-size: 22px;
            font-weight: 400;
            margin-bottom: 10px;
            color: black;
            font-weight:600;
        }

        .price-container{
        /* padding: 5px; */
        align-items: center;
        display: flex;
        justify-content: center;
        margin-bottom: 30px;
        margin-top: 30px;
        }
        
        .plan-price{
            padding: 5px;
        color: black;
        font-size: 28px;
        font-weight: 600;
        margin-right: 10px;
        }
        .final-btn{
            margin-top: 1.8rem;
            display: flex;
            align-items: center;
            justify-content: center;
            /* border: 2px solid red; */

        }
        .plan-select-btn{
            background-color: red;
            border-radius: 7px;
            border: 2px solid red;
            padding: 20px;
            color: #fff;
            font-size: 23px;
            font-weight: 700;
        }
        
        .plan-select-btn a{
        	color:white;
        }

        .plan-select-btn:hover{
            background-color:white !important;
            color:red !important;
            /* border:1px solid red; */
        }
        
        .plan-select-btn a:hover{
            background-color:white !important;
            color:red !important;

    </style>
    <br>
    <br>
    
    <%@ include file="footer.html" %>
</body>
</html>