<%-- 
    Document   : registration
    Created on : Nov 10, 2018, 2:46:14 AM
    Author     : wowotek
--%>

<!DOCTYPE html>
<html lang="en">

<head>
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <title>Hello Bulma!</title>
    <link rel="stylesheet" href="rsc/bulma-wowo.css">
    <link rel="stylesheet" href="rsc/style-member.css">
    <script defer src="https://use.fontawesome.com/releases/v5.3.1/js/all.js"></script>
    <script src="rsc/member-panel-script.js"></script>
</head>

<body>
    <div class="container is-widescreen coming">
        <div class="box">
            <center>
                <figure class="image">
                    <img src="rsc/Logo-fit.jpeg" alt="SB Logo" style="height: 150px; width: auto;" />
                    <br />
                </figure>
                <h3 class="title is-3" style="color: #EFF0EB;">Sign - In</h3>
                <hr />
            </center>
            <form action="reg" method="post">
                <div class="field">
                    <label class="label has-text-white">Username</label>
                    <div class="control">
                        <input type="password" class="input">
                    </div>
                </div>
                <div class="field">
                    <label class="label has-text-white">Password</label>
                    <div class="control">
                        <input type="password" name="" id="" class="input">
                    </div>
                </div>
                <br>
                <div class="columns">
                    <div class="column">
                        <input type="submit" value="Back" class="button is-warning is-fullwidth">
                    </div>
                    <div class="column">
                        <input type="submit" value="Login" class="button is-success is-fullwidth">
                    </div>
                </div>
            </form>
        </div>
    </div>
</body>

</html>