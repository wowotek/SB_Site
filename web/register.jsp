<%-- 
    Document   : registration
    Created on : Nov 10, 2018, 2:46:14 AM
    Author     : wowotek
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>

<head>
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <title>Hello Bulma!</title>
    <link rel="stylesheet" href="rsc/bulma-wowo.css">
    <link rel="stylesheet" href="rsc/style-member.css">
    <script defer src="rsc/fontawesome/js/all.js"></script>
</head>

<body>
    <div class="container coming">
        <div class="box reg-box">
            <form action="Register" method="post" onsubmit="return validate(this)">
                <center>
                    <figure class="image">
                        <img src="rsc/Logo-fit.jpeg" alt="SB Logo" style="height: 150px; width: auto;" />
                        <br />
                    </figure>
                    <h3 class="title is-3" style="color: #EFF0EB;">Registrasi - Informasi Akun</h3>
                    <hr />
                </center>
                <div class="columns">
                    <div class="column">
                        <div class="field">
                            <label class="label has-text-white">Nama Depan</label>
                            <div class="control">
                                <input class="input" type="text" placeholder="Samuel" required name="nama-depan">
                            </div>
                        </div>
                    </div>
                    <div class="column">
                        <div class="field">
                            <label class="label has-text-white">Nama Tengah (Opsional)</label>
                            <div class="control">
                                <input class="input" type="text" placeholder="Dwi" name="nama-tengah">
                            </div>
                        </div>
                    </div>
                    <div class="column">
                        <div class="field">
                            <label class="label has-text-white">Nama Belakang (Opsional)</label>
                            <div class="control">
                                <input class="input" type="text" placeholder="Bramantya" name="nama-belakang">
                            </div>
                        </div>
                    </div>
                </div>

                <div class="field">
                    <label class="label has-text-white">Username</label>
                    <div class="control has-icons-left">
                        <input class="input" type="text" placeholder="nama akun anda" required name="username">
                        <span class="icon is-small is-left">
                            <i class="fas fa-user"></i>
                        </span>
                    </div>
                </div>

                <div class="field">
                    <label class="label has-text-white">Email</label>
                    <div class="control has-icons-left">
                        <input class="input" type="email" placeholder="alamat email yang valid" required name="email">
                        <span class="icon is-small is-left">
                            <i class="fas fa-envelope"></i>
                        </span>
                    </div>
                </div>
                <div class="field">
                    <label class="label has-text-white">Kata Sandi</label>
                    <p class="control has-icons-left">
                        <input class="input" type="password" placeholder="Tulis Kata Sandi Anda" name="pass1" id="passinput1">
                        <span class="icon is-small is-left">
                            <i class="fas fa-lock"></i>
                        </span>
                    </p>
                    <p class="help" id="pass1help"></p>
                </div>
                <div class="field">
                    <label class="label has-text-white">Verifikasi Kata Sandi</label>
                    <p class="control has-icons-left">
                        <input class="input" type="password" placeholder="Tulis Ulang Kata Sandi Anda" name="pass2" id="passinput2">
                        <span class="icon is-small is-left">
                            <i class="fas fa-lock"></i>
                        </span>
                    </p>
                    <p class="help is-danger" id="pass2help"></p>
                </div>
                <br />
                <div class="field">
                    <div class="control">
                        <input name="reg-pass-submit" type="submit" class="button is-link is-medium is-fullwidth" value="Submit" />
                    </div>
                </div>
            </form>
        </div>
    </div>
</body>
<script type="text/javascript">
    function validate(form) {
        const p1 = document.getElementById("passinput1");
        const p2 = document.getElementById("passinput2");

        const h1 = document.getElementById("pass1help");
        const h2 = document.getElementById("pass2help");

        if (form.pass1.value === "" || form.pass1.value === null) {
            p1.className = "input is-danger";

            h1.innerHTML = "Kata Sandi tidak Bisa Kosong";
            h1.className = "help is-danger";
            return false;
        } else if (form.pass1.value.length < 6 || form.pass2.value.length < 6) {
            if (form.pass1.value.length < 6) {
                p1.className = "input is-danger";

                h1.innerHTML = "Kata Sandi harus diatas 6 karakter";
                h1.className = "help is-danger";
                return false;
            }

            if (form.pass2.value.length < 6) {
                p2.className = "input is-danger";

                h2.innerHTML = "Kata Sandi harus diatas 6 karakter";
                h2.className = "help is-danger";
                return false;
            }
        } else if (form.pass2.value === "" || form.pass2.value === null) {
            p2.className = "input is-danger";

            h2.innerHTML = "Silahkan Konfirmasi Kata Sandi dengan Mengetik Ulang";
            h2.className = "help is-danger";
            return false;
        } else if (form.pass1.value !== form.pass2.value) {
            p1.className = "input is-danger";
            p2.className = "input is-danger";

            h1.innerHTML = "Kata Sandi tidak sama";
            h2.innerHTML = "Kata Sandi tidak sama";

            h1.className = "help is-danger";
            h2.className = "help is-danger";
            return false;
        } else if (form.pass1.value === form.pass2.value) {
            p1.className = "input is-success";
            p2.className = "input is-success";

            h1.innerHTML = "";
            h2.innerHTML = "";

            h1.className = "help is-success";
            h1.className = "help is-success";
            return true;
        }
    }
</script>

</html>
