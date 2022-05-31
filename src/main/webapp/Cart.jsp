<%-- 
    Document   : Cart
    Created on : 26 May, 2022, 6:31:45 PM
    Author     : Khumaini
--%>

<%@page import="Webshopping.ItemLength"%>
<%@page import="Webshopping.UserData"%>
<%@page import="java.util.List"%>
<%@page import="java.util.ArrayList"%>
<%@page import="java.util.Arrays"%>
<%@page import="Webshopping.CartDetails"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@taglib uri = "http://java.sun.com/jsp/jstl/sql" prefix = "sql"%>

<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
        <script src=
                "https://ajax.googleapis.com/ajax/libs/jquery/3.4.0/jquery.min.js">
        </script>
    </head>
    <body style="background-color:pink" onload="generate_table()">

        <%! CartDetails c = null;
            UserData u = null;
            HttpSession httpSession = null;
            int sum = 0;
            String[] shirts, laptops, shoes, dresses, items, phones;
            List<String> list, laplist, shoelist, dlist, ilist, plist;
            ItemLength il = null;
            String shirtArray, laptopArray, shoeArray, dressArray, itemArray, phoneArray;
        %>

        <%
            httpSession = request.getSession(false);
            if (httpSession != null) {
                c = (CartDetails) httpSession.getAttribute("cart");
                u = (UserData) httpSession.getAttribute("user");
                il = (ItemLength) httpSession.getAttribute("itemLength");
            }
        %>

        <%
            String[] shirt = c.getShirt();
            if (shirt != null) {
                list = new ArrayList<String>(Arrays.asList(shirt));
                if (shirts != null) {
                    for (String i : shirts) {
                        if (list.contains(i)) {
                            list.remove(i);
                        }
                    }
                }
            }
            if (list != null) {
                if (!list.isEmpty()) {
                    shirt = list.toArray(new String[0]);
                    for (int i = 0; i < shirt.length; i++) {
                        sum += Integer.parseInt(shirt[i].substring(8, shirt[i].length()));
                        il.setShirtLength(il.getShirtLength() + 1);
                    }
                }
            }
            if (shirts != null) {
                List<String> shirtsList = new ArrayList<String>(Arrays.asList(shirts));
                shirtsList.addAll(Arrays.asList(shirt));
                shirts = shirtsList.toArray(new String[0]);

            } else if (shirt != null) {
                shirts = shirt;
            }

        %>

        <%            String[] shoe = c.getShoe();
            if (shoe != null) {
                shoelist = new ArrayList<String>(Arrays.asList(shoe));
                if (shoes != null) {
                    for (String i : shoes) {
                        if (shoelist.contains(i)) {
                            shoelist.remove(i);
                        }
                    }
                }
            }
            if (shoelist != null) {
                if (!shoelist.isEmpty()) {
                    shoe = shoelist.toArray(new String[0]);
                    for (int i = 0; i < shoe.length; i++) {
                        sum += Integer.parseInt(shoe[i].substring(7, shoe[i].length()));
                        il.setShoeLength(il.getShoeLength() + 1);
                    }
                }
            }
            if (shoes != null) {
                List<String> shoesList = new ArrayList<String>(Arrays.asList(shoes));
                shoesList.addAll(Arrays.asList(shoe));
                shoes = shoesList.toArray(new String[0]);
            } else if (shoe != null) {
                shoes = shoe;
            }
        %>

        <%
            String[] dress = c.getDress();
            if (dress != null) {
                dlist = new ArrayList<String>(Arrays.asList(dress));
                if (dresses != null) {
                    for (String i : dresses) {
                        if (dlist.contains(i)) {
                            dlist.remove(i);
                        }
                    }
                }
            }
            if (dlist != null) {
                if (!dlist.isEmpty()) {
                    dress = dlist.toArray(new String[0]);
                    for (int i = 0; i < dress.length; i++) {
                        sum += Integer.parseInt(dress[i].substring(8, dress[i].length()));
                        il.setDressLength(il.getDressLength() + 1);
                    }
                }
            }
            if (dresses != null) {
                List<String> dressList = new ArrayList<String>(Arrays.asList(dresses));
                dressList.addAll(Arrays.asList(dress));
                dresses = dressList.toArray(new String[0]);

            } else if (dress != null) {
                dresses = dress;

            }
        %>

        <%
            String[] item = c.getMakeup();
            if (item != null) {
                ilist = new ArrayList<String>(Arrays.asList(item));
                if (items != null) {
                    for (String i : items) {
                        if (ilist.contains(i)) {
                            ilist.remove(i);
                        }
                    }
                }
            }
            if (ilist != null) {
                if (!ilist.isEmpty()) {
                    item = ilist.toArray(new String[0]);
                    for (int i = 0; i < item.length; i++) {
                        sum += Integer.parseInt(item[i].substring(7, item[i].length()));
                        il.setMakeupLength(il.getMakeupLength() + 1);
                    }
                }
            }
            if (items != null) {
                List<String> itemsList = new ArrayList<String>(Arrays.asList(items));
                itemsList.addAll(Arrays.asList(item));
                items = itemsList.toArray(new String[0]);

            } else if (item != null) {
                items = item;

            }
        %>

        <%
            String[] phone = c.getPhone();
            if (phone != null) {
                plist = new ArrayList<String>(Arrays.asList(phone));
                if (phones != null) {
                    for (String i : phones) {
                        if (plist.contains(i)) {
                            plist.remove(i);
                        }
                    }
                }
            }
            if (plist != null) {
                if (!plist.isEmpty()) {
                    phone = plist.toArray(new String[0]);
                    for (int i = 0; i < phone.length; i++) {
                        sum += Integer.parseInt(phone[i].substring(8, phone[i].length()));
                        il.setPhoneLength(il.getPhoneLength() + 1);
                    }
                }
            }
            if (phones != null) {
                List<String> phonesList = new ArrayList<String>(Arrays.asList(phones));
                phonesList.addAll(Arrays.asList(phone));
                phones = phonesList.toArray(new String[0]);

            } else if (phone != null) {
                phones = phone;

            }
        %>

        <%
            String[] laptop = c.getLaptop();
            if (laptop != null) {
                laplist = new ArrayList<String>(Arrays.asList(laptop));
                if (laptops != null) {
                    for (String i : laptops) {
                        if (laplist.contains(i)) {
                            laplist.remove(i);
                        }
                    }
                }
            }
            if (laplist != null) {
                if (!laplist.isEmpty()) {
                    laptop = laplist.toArray(new String[0]);
                    for (int i = 0; i < laptop.length; i++) {
                        sum += Integer.parseInt(laptop[i].substring(9, laptop[i].length()));
                        il.setLaptopLength(il.getLaptopLength() + 1);
                    }
                }
            }
            if (laptops != null) {
                List<String> lapsList = new ArrayList<String>(Arrays.asList(laptops));
                lapsList.addAll(Arrays.asList(laptop));
                laptops = lapsList.toArray(new String[0]);

            } else if (laptop != null) {
                laptops = laptop;

            }
        %>

        <%
            StringBuilder builder = new StringBuilder();
            builder.append("[");
            if (shirts != null) {
                for (int i = 0; i < shirts.length; i++) {
                    builder.append(shirts[i]);
                    if (i != shirts.length - 1) {
                        builder.append("$");
                    }
                }
                builder.append("]");
                shirtArray = builder.toString();
            }
        %>

        <%
            builder = new StringBuilder();
            builder.append("[");
            if (laptops != null) {
                for (int i = 0; i < laptops.length; i++) {
                    builder.append(laptops[i]);
                    if (i != laptops.length - 1) {
                        builder.append("$");
                    }
                }
                builder.append("]");
                laptopArray = builder.toString();
            }
        %>

        <%
            builder = new StringBuilder();
            builder.append("[");
            if (shoes != null) {
                for (int i = 0; i < shoes.length; i++) {
                    builder.append(shoes[i]);
                    if (i != shoes.length - 1) {
                        builder.append("$");
                    }
                }
                builder.append("]");
                shoeArray = builder.toString();
            }
        %>

        <%
            builder = new StringBuilder();
            builder.append("[");
            if (dresses != null) {
                for (int i = 0; i < dresses.length; i++) {
                    builder.append(dresses[i]);
                    if (i != dresses.length - 1) {
                        builder.append("$");
                    }
                }
                builder.append("]");
                dressArray = builder.toString();
            }
        %>

        <%
            builder = new StringBuilder();
            builder.append("[");
            if (items != null) {
                for (int i = 0; i < items.length; i++) {
                    builder.append(items[i]);
                    if (i != items.length - 1) {
                        builder.append("$");
                    }
                }
                builder.append("]");
                itemArray = builder.toString();
            }
        %>

        <%
            builder = new StringBuilder();
            builder.append("[");
            if (phones != null) {
                for (int i = 0; i < phones.length; i++) {
                    builder.append(phones[i]);
                    if (i != phones.length - 1) {
                        builder.append("$");
                    }
                }
                builder.append("]");
                phoneArray = builder.toString();
            }
        %>

        <% il.setSum(sum);%>

        <p style="color:blue;font-size:20px"><%="Final amount is " + sum%></p>

        <%
            ArrayList<String> itemList1 = new ArrayList<String>();
            if (shirts != null) {
                itemList1.addAll(Arrays.asList(shirts));
            }
            if (shoes != null) {
                itemList1.addAll(Arrays.asList(shoes));
            }
            if (dresses != null) {
                itemList1.addAll(Arrays.asList(dresses));
            }
            if (items != null) {
                itemList1.addAll(Arrays.asList(items));
            }
            if (phones != null) {
                itemList1.addAll(Arrays.asList(phones));
            }
            if (laptops != null) {
                itemList1.addAll(Arrays.asList(laptops));
            }
            ArrayList<String> itemList = new ArrayList<String>();
            for (String i : itemList1) {
                if (!itemList.contains(i)) {
                    itemList.add(i);
                }
            }
        %>
        
        
        
    <center><b style="background-color:pink;width:190px;font-size:25px;">
            <b style="color:blueviolet"> Hello, <%= u.getUserName()%></b>
        </b>
        <form>
            <input type="submit"  value="Continue Shopping" formaction="/WebShopping/internship.html" style="position:fixed;top:50px;right:325px;display: inline-block;padding: 10px 10px;font-size:13px;cursor: pointer;text-align: center;text-decoration: none;outline: none;color:#FF1493;background-color:black;border: none;border-radius: 20px;box-shadow: 0 3px #999;font-family:cursive;"/>
        </form>

        <input type="hidden" id="sl" value='<%= il.getShirtLength()%>'/>
        <input type="hidden" id="ss" value="<%= shirtArray%>"/>
        <input type="hidden" id="ll" value="<%= il.getLaptopLength()%>"/>
        <input type="hidden" id="ls" value="<%= laptopArray%>"/>
        <input type="hidden" id="shl" value="<%= il.getShoeLength()%>"/>
        <input type="hidden" id="shs" value="<%= shoeArray%>"/>
        <input type="hidden" id="dl" value="<%= il.getDressLength()%>"/>
        <input type="hidden" id="ds" value="<%= dressArray%>"/>
        <input type="hidden" id="il" value="<%= il.getMakeupLength()%>"/>
        <input type="hidden" id="is" value="<%= itemArray%>"/>
        <input type="hidden" id="pl" value="<%= il.getPhoneLength()%>"/>
        <input type="hidden" id="ps" value="<%= phoneArray%>"/>
        <input type="hidden" id="ill" value="<%= itemList%>"/>
        <input type="hidden" id="sk" value="<%=sum%>"/>

        <script>

            function generate_table() {

                var count = 0;
                var body = document.getElementsByTagName("body")[0];
                var tbl = document.createElement("table");

                tbl.id = "itlist";
                tbl.style.border = '0px';
                var tblBody = document.createElement("tbody");
                count = parseInt(document.getElementById("sl").value) +
                        parseInt(document.getElementById("ll").value) +
                        parseInt(document.getElementById("shl").value) +
                        parseInt(document.getElementById("dl").value) +
                        parseInt(document.getElementById("il").value) +
                        parseInt(document.getElementById("pl").value);

                var Items = new Array();

                var shirtItems = document.getElementById("ss").value;
                shirtItems = shirtItems.slice(1, shirtItems.length - 1);
                if (Object.keys(shirtItems).length !== 0 && shirtItems.constructor !== Object) {
                    shirtItems = shirtItems.split("$");
                    Items = Items.concat(shirtItems);
                }

                var laptopItems = document.getElementById("ls").value;
                laptopItems = laptopItems.slice(1, laptopItems.length - 1);
                if (Object.keys(laptopItems).length !== 0 && laptopItems.constructor !== Object) {
                    laptopItems = laptopItems.split("$");
                    Items = Items.concat(laptopItems);
                }

                var shoeItems = document.getElementById("shs").value;
                shoeItems = shoeItems.slice(1, shoeItems.length - 1);
                if (Object.keys(shoeItems).length !== 0 && shoeItems.constructor !== Object) {
                    shoeItems = shoeItems.split("$");
                    Items = Items.concat(shoeItems);
                }

                var dressItems = document.getElementById("ds").value;
                dressItems = dressItems.slice(1, dressItems.length - 1);
                if (Object.keys(dressItems).length !== 0 && dressItems.constructor !== Object) {
                    dressItems = dressItems.split("$");
                    Items = Items.concat(dressItems);
                }

                var makeItems = document.getElementById("is").value;
                makeItems = makeItems.slice(1, makeItems.length - 1);
                if (Object.keys(makeItems).length !== 0 && makeItems.constructor !== Object) {
                    makeItems = makeItems.split("$");
                    Items = Items.concat(makeItems);
                }

                var phoneItems = document.getElementById("ps").value;
                phoneItems = phoneItems.slice(1, phoneItems.length - 1);
                if (Object.keys(phoneItems).length !== 0 && phoneItems.constructor !== Object) {
                    phoneItems = phoneItems.split("$");
                    Items = Items.concat(phoneItems);
                }

                Items = document.getElementById("ill").value.slice(1, -1).split(",");


                var row = document.createElement("tr");
                for (var j = 0; j < 6; j++) {
                    if (j < 4) {
                        var cell = document.createElement("td");
                        var cellText = document.createTextNode('\u00A0\u00A0\u00A0\u00A0\u00A0\u00A0\u00A0\u00A0\u00A0\u00A0\u00A0\u00A0\u00A0\u00A0\u00A0\u00A0\n\
       \u00A0\u00A0\u00A0\u00A0\u00A0\u00A0\u00A0\u00A0\u00A0\u00A0\u00A0\u00A0\u00A0\u00A0\u00A0\u00A0\u00A0\u00A0\u00A0\u00A0\u00A0\u00A0\u00A0\u00A0\u00A0');
                        cell.style.border = '0px pink';
                        cell.appendChild(cellText);
                        row.appendChild(cell);
                    } else if (j == 4) {
                        var cell = document.createElement("td");
                        var cellText = document.createTextNode("Selected Item");
                        cell.style.border = '1px solid blue';

                        cell.appendChild(cellText);
                        row.appendChild(cell);
                    } else if (j == 5) {
                        var cell = document.createElement("td");
                        var cellText = document.createTextNode("Cost");
                        cell.style.border = '1px solid blue';

                        cell.appendChild(cellText);
                        row.appendChild(cell);
                    }
                }
                tblBody.appendChild(row);

                Items = Items.filter((item, index) => Items.indexOf(item) === index);

                for (var i = 0; i < count; i++) {
                    var row = document.createElement("tr");
                    for (var j = 0; j < 6; j++) {
                        if (j < 4) {
                            var cell = document.createElement("td");
                            var cellText = document.createTextNode('\u00A0\u00A0\u00A0\u00A0\u00A0\u00A0\u00A0\u00A0\u00A0\u00A0\u00A0\u00A0\u00A0\u00A0\u00A0\u00A0\n\
       \u00A0\u00A0\u00A0\u00A0\u00A0\u00A0\u00A0\u00A0\u00A0\u00A0\u00A0\u00A0\u00A0\u00A0\u00A0\u00A0\u00A0\u00A0\u00A0\u00A0\u00A0\u00A0\u00A0\u00A0\u00A0');
                            cell.style.border = '0px pink';
                            cell.appendChild(cellText);
                            row.appendChild(cell);
                        } else if (j == 4) {
                            var cell = document.createElement("td");
                            if (Items[i].length == 12)
                                var cellText = document.createTextNode(Items[i].slice(0, 7));
                            if (Items[i].length == 13)
                                var cellText = document.createTextNode(Items[i].slice(0, 8));
                            if (Items[i].length == 11)
                                var cellText = document.createTextNode(Items[i].slice(0, 6));
                            if (Items[i].length == 14)
                                var cellText = document.createTextNode(Items[i].slice(0, 8));
                            if (Items[i].length == 15)
                                var cellText = document.createTextNode(Items[i].slice(0, 9));
                            cell.style.border = '1px solid blue';
                            cell.appendChild(cellText);
                            row.appendChild(cell);
                        } else if (j == 5) {
                            var cell = document.createElement("td");
                            if (Items[i].length == 12)
                                var cellText = document.createTextNode(Items[i].slice(8, 12));
                            if (Items[i].length == 13)
                                var cellText = document.createTextNode(Items[i].slice(9, 13));
                            if (Items[i].length == 11)
                                var cellText = document.createTextNode(Items[i].slice(7, 11));
                            if (Items[i].length == 14)
                                var cellText = document.createTextNode(Items[i].slice(9, 14));
                            if (Items[i].length == 15)
                                var cellText = document.createTextNode(Items[i].slice(10, 15));
                            cell.style.border = '1px solid blue';
                            cell.appendChild(cellText);
                            row.appendChild(cell);
                        }
                    }
                    tblBody.appendChild(row);
                }

                var row = document.createElement("tr");
                for (var j = 0; j < 6; j++) {
                    if (j < 4) {
                        var cell = document.createElement("td");
                        var cellText = document.createTextNode('\u00A0\u00A0\u00A0\u00A0\u00A0\u00A0\u00A0\u00A0\u00A0\u00A0\u00A0\u00A0\u00A0\u00A0\u00A0\u00A0\n\
       \u00A0\u00A0\u00A0\u00A0\u00A0\u00A0\u00A0\u00A0\u00A0\u00A0\u00A0\u00A0\u00A0\u00A0\u00A0\u00A0\u00A0\u00A0\u00A0\u00A0\u00A0\u00A0\u00A0\u00A0\u00A0');
                        cell.style.border = '0px pink';
                        cell.appendChild(cellText);
                        row.appendChild(cell);
                    } else if (j == 4) {
                        var cell = document.createElement("td");
                        var cellText = document.createTextNode("Amount to pay");
                        cell.style.border = '1px solid blue';
                        cell.appendChild(cellText);
                        row.appendChild(cell);
                    } else if (j == 5) {
                        var cell = document.createElement("td");
                        var cellText = document.createTextNode(document.getElementById("sk").value);
                        cell.style.border = '1px solid blue';
                        cell.appendChild(cellText);
                        row.appendChild(cell);
                    }
                }
                tblBody.appendChild(row);

                tbl.appendChild(tblBody);
                body.appendChild(tbl);
                tbl.setAttribute("border", "2");
            }


        </script>
    </center>
    <center>
        <div style='width:825px;border: 10px solid deeppink;padding: 50px;'>
            <table> <tr></tr><tr></tr><tr><td style='font-family:Cursive;font-size:25px;color:orchid;border:2px solid deeppink;padding:10px;color:black'><center><marquee>WebShopping</marquee></center></td></tr>
                <tr><td><img src="https://t4.ftcdn.net/jpg/03/55/12/37/240_F_355123783_WjUgN86awgqdCdPKkfPDgZFJTN5qvtaI.jpg"   height=250px width=800px/></td></tr>
                <tr><td><center>
                    <form>
                        <input type="submit" formaction="/WebShopping/internship.html" value="Visit Now" style="display: inline-block;padding: 10px 10px;font-size:13px;cursor: pointer;text-align: center;text-decoration: none;outline: none;color:#FF1493;background-color:black;border: none;border-radius: 20px;box-shadow: 0 3px #999;font-family:cursive;">
                    </form>
                </center></td></tr></table>
        </div>
    </center>
    <center>
        <form method="post">
            <input type="submit" formaction="/WebShopping/PaymentForm.html"  value="Make payment" style=" position:fixed;bottom:5px;right:325px;display: inline-block;padding: 10px 10px;font-size:13px;cursor: pointer;text-align: center;text-decoration: none;outline: none;color:#FF1493;background-color:black;border: none;border-radius: 20px;box-shadow: 0 3px #999;font-family:cursive;">
        </form>
    </center>
    <script>
        var Items = new Array();

        var shirtItems = document.getElementById("ss").value;
        shirtItems = shirtItems.slice(1, shirtItems.length - 1);
        if (Object.keys(shirtItems).length !== 0 && shirtItems.constructor !== Object) {
            shirtItems = shirtItems.split("$");
            Items = Items.concat(shirtItems);
        }

        var laptopItems = document.getElementById("ls").value;
        laptopItems = laptopItems.slice(1, laptopItems.length - 1);
        if (Object.keys(laptopItems).length !== 0 && laptopItems.constructor !== Object) {
            laptopItems = laptopItems.split("$");
            Items = Items.concat(laptopItems);
        }

        var shoeItems = document.getElementById("shs").value;
        shoeItems = shoeItems.slice(1, shoeItems.length - 1);
        if (Object.keys(shoeItems).length !== 0 && shoeItems.constructor !== Object) {
            shoeItems = shoeItems.split("$");
            Items = Items.concat(shoeItems);
        }

        var dressItems = document.getElementById("ds").value;
        dressItems = dressItems.slice(1, dressItems.length - 1);
        if (Object.keys(dressItems).length !== 0 && dressItems.constructor !== Object) {
            dressItems = dressItems.split("$");
            Items = Items.concat(dressItems);
        }

        var makeItems = document.getElementById("is").value;
        makeItems = makeItems.slice(1, makeItems.length - 1);
        if (Object.keys(makeItems).length !== 0 && makeItems.constructor !== Object) {
            makeItems = makeItems.split("$");
            Items = Items.concat(makeItems);
        }

        var phoneItems = document.getElementById("ps").value;
        phoneItems = phoneItems.slice(1, phoneItems.length - 1);
        if (Object.keys(phoneItems).length !== 0 && phoneItems.constructor !== Object) {
            phoneItems = phoneItems.split("$");
            Items = Items.concat(phoneItems);
        }

    </script>
</body>
</html>
