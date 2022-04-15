<%-- 
    Document   : customernav
    Created on : 15 Apr 2022, 1:12:08 pm
    Author     : ronal
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>

<nav id="sidebar">
    <div class="sidebar-header">
        <h3>DGL<img src="../images/logo.png" width="65px"> </h3>

    </div>

    <ul class="list-unstyled components text-white">
        <li>
            <a href="#Reward" data-toggle="collapse" aria-expanded="false" class="dropdown-toggle">Reward</a>
            <ul class="collapse list-unstyled" id="Reward">
                <li>
                    <a href="./insertReward.php">Insert Reward</a>
                </li>
                <li>
                    <a href="./editReward.php">Edit Reward</a>
                </li>
                <li>
                    <a href="./confirmReward.php">Confirm Reward</a>
                </li>
            </ul>
        </li>
        <li>
            <a href="#Store" data-toggle="collapse" aria-expanded="false" class="dropdown-toggle">Store</a>
            <ul class="collapse list-unstyled" id="Store">
                <li>
                    <a href="./verifyStore.php">Verify Store</a>
                </li>
                <li>
                    <a href="./editStore.php">Edit Store</a>
                </li>
                <li>
                    <a href="#">Store</a>
                </li>
            </ul>
        </li>
        <li>
            <a href="./accountManagerment.php">Account Managerment</a>
        </li>
    </ul>

    <ul class="list-unstyled CTAs">
        <li id="userText" >mdo</li>
        <li><a class="dropdown-item" href="./profile.php">Profile</a></li>
        <li>
            <hr class="dropdown-divider">
        </li>
        <li><a class="dropdown-item" href="./login.html">Sign out</a></li>
    </ul>
</nav>