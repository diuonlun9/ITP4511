<%-- 
    Document   : customernav
    Created on : 15 Apr 2022, 1:12:08 pm
    Author     : ronal
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>

<nav id="sidebar">
    <div class="sidebar-header">
        <h3>DGL<img src="../img/dumbell.png" width="65px"> </h3>

    </div>

    <ul class="list-unstyled components text-white">
        <li>
            <a href="#Listing" data-toggle="collapse" aria-expanded="false" class="dropdown-toggle">Reward</a>
            <ul class="collapse list-unstyled" id="Listing">
                <li>
                    <a href="./staff_listtrainer.jsp">Personal Trainers</a>
                </li>
                <li>
                    <a href="./staff_listcenter.jsp">Gym centers</a>
                </li>
            </ul>
        </li>
        <li>
            <a href="#Booking" data-toggle="collapse" aria-expanded="false" class="dropdown-toggle">Store</a>
            <ul class="collapse list-unstyled" id="Booking">
                <li>
                    <a href="./verifyStore.php">Booking Requests</a>
                </li>
            </ul>
        </li>

    </ul>

    <ul class="list-unstyled CTAs">
        <li>
            <hr class="dropdown-divider">
        </li>
        <li><a class="dropdown-item" href="./login.html">Sign out</a></li>
    </ul>
</nav>