
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">

        <link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.3.1/css/bootstrap.min.css" integrity="sha384-ggOyR0iXCbMQv3Xipma34MD+dH/1fQ784/j6cY/iJTQUOhcWr7x9JvoRxT2MZw1T" crossorigin="anonymous">
        <script src="https://code.jquery.com/jquery-3.3.1.slim.min.js" integrity="sha384-q8i/X+965DzO0rT7abK41JStQIAqVgRVzpbzo5smXKp4YfRvH+8abtTE1Pi6jizo" crossorigin="anonymous"></script>
        <script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.14.7/umd/popper.min.js" integrity="sha384-UO2eT0CpHqdSJQ6hJty5KVphtPhzWj9WO1clHTMGa3JDZwrnQq4sF86dIHNDz0W1" crossorigin="anonymous"></script>
        <script src="https://stackpath.bootstrapcdn.com/bootstrap/4.3.1/js/bootstrap.min.js" integrity="sha384-JjSmVgyd0p3pXB1rRibZUAYoIIy6OrQ6VrjIEaFf/nJGzIxFDsf4x0xIM+B07jRM" crossorigin="anonymous"></script>

        <title>Index</title>
    </head>
    <body>
        <br>
        <div align="center">

            <h1 class="text-success">${User.fname}   ${User.lname}</h1>
        </div>
        <br>
        <div class="text-success">
            <div align="center">
                <div class="row">

                    <div class="col-md-4">

                    </div>

                    <div class="col-md-4">
                        <img src="images/${User.profile}.png" heigth="100" width="300">
                    </div>

                    <div class="col-md-4">

                    </div>
                </div>
            </div>
        </div>

        <br>

        <div class="container-fluid">
            <div class="row">
                <div class="col-md-4">
                </div>
                <div class="col-md-4">


                    <a href="EditProfile.jsp">
                        <button type="button" class="btn btn-sm disabled active btn-block btn-outline-info" style="color:#FFC0DC; border-color:#FFC0DC; font-size: 1.5rem;  ">
                            Edit Profile
                        </button>
                    </a>

                </div>
                <div class="col-md-4">
                </div>
            </div>
        </div>



        <br><br>


        <div class="container-fluid">
            <div class="row">
                <div class="col-md-4">
                </div>
                <div class="col-md-4">
                    <div align="center">
                        <h4 style="color:#FFA5CC">น้ำหนัก = ${User.weight} กิโลกรัม</h4>
                    </div>
                    <br>
                    <div align="center">
                        <h4 style="color:#FFA5CC">ส่วนสูง = ${User.height} เซนติเมตร</h4>
                    </div>
                    <br>

                    <div align="center">
                        <h4 style="color:#FF7EB6">ค่า BMI ของคุณ = ${100*User.weight/User.height/2}</h4>
                    </div>

                    <br>
                    <div align="center">
                        <h3 style="color:#FF63A8">
                            <div align="center"> ♡♡♡♡♡♡♡♡♡♡♡♡♡♡♡♡♡ </div>
                            อยู่ในเกณฑ์
                            <c:choose>
                                <c:when test="${100*User.weight/User.height/2<18.5}">นํ้าหนักน้อย/ผอม</c:when>
                                <c:when test="${100*User.weight/User.height/2>18.5&&100*User.weight/User.height/2<22.9}">ปกติ(สุขภาพดี)</c:when>
                                <c:when test="${100*User.weight/User.height/2>23&&100*User.weight/User.height/2<24.9}">ท้วม(โรคอ้วนระดับ1)</c:when>
                                <c:when test="${100*User.weight/User.height/2>25&&100*User.weight/User.height/2<29.9}">อ้วน(โรคอ้วนระดับ2)</c:when>
                                <c:when test="${100*User.weight/User.height/2>30}"> อ้วน(โรคอ้วนระดับ2)</c:when>
                            </c:choose>
                        </h3>
                    </div>
                    <div align="center">
                        <h3 style="color:#FF63A8">
                            <div align="center"> ♡♡♡♡♡♡♡♡♡♡♡♡♡♡♡♡♡ </div>
                            ภาวะเสี่ยงต่อโรค
                            <c:choose>
                                <c:when test="${100*User.weight/User.height/2<18.5}">มากกว่าคนปกติ</c:when>
                                <c:when test="${100*User.weight/User.height/2>18.5&&100*User.weight/User.height/2<22.9}">เท่าคนปกติ</c:when>
                                <c:when test="${100*User.weight/User.height/2>23&&100*User.weight/User.height/2<24.9}">อันตรายระดับ1</c:when>
                                <c:when test="${100*User.weight/User.height/2>25&&100*User.weight/User.height/2<29.9}">อันตรายระดับ2</c:when>
                                <c:when test="${100*User.weight/User.height/2>30}">อันตรายระดับ3</c:when>
                            </c:choose>

                            <h3 style="color:#FF63A8">
                                <div align="center"> ♡♡♡♡♡♡♡♡♡♡♡♡♡♡♡♡♡ </div>

                                </div>
                                <br>
                                <details>
                                    <summary style="color:#FFC0DC">view details</summary>
                                        <c:choose>
                                            <c:when test="${100*User.weight/User.height/2<18.5}">น้ำหนักน้อยกว่าปกติก็ไม่ค่อยดี หากคุณสูงมากแต่น้ำหนักน้อยเกินไป อาจเสี่ยงต่อการได้รับสารอาหารไม่เพียงพอหรือได้รับพลังงานไม่เพียงพอ ส่งผลให้ร่างกายอ่อนเพลียง่าย การรับประทานอาหารให้เพียงพอและออกกำลังกายแบบเวทเทรนนิ่งเพื่อเสริมสร้างกล้ามเนื้อ สามารถช่วยเพิ่มค่า BMI ให้อยู่ในเกณฑ์ปกติได้</c:when>
                                        <c:when test="${100*User.weight/User.height/2>18.5&&100*User.weight/User.height/2<22.9}">น้ำหนักที่เหมาะสมสำหรับคนไทยคือค่า BMI ระหว่าง 18.6-22.8 จัดอยู่ในเกณฑ์ปกติ ห่างไกลโรคที่เกิดจากความอ้วน และมีความเสี่ยงต่อการเกิดโรคต่าง ๆ น้อยที่สุด ควรพยายามรักษาระดับค่า BMI ให้อยู่ในระดับนี้ให้นานที่สุด</c:when>
                                        <c:when test="${100*User.weight/User.height/2>23&&100*User.weight/User.height/2<24.9}">พยายามอีกนิดเพื่อลดน้ำหนักให้เข้าสู่ค่ามาตรฐาน เพราะค่า BMI ในช่วงนี้ยังถือว่าเป็นกลุ่มผู้ที่มีความอ้วนอยู่บ้าง แม้จะไม่ถือว่าอ้วน แต่หากประวัติคนในครอบครัวเคยเป็นโรคเบาหวานและความดันโลหิตสูง ก็ถือว่ายังมีความเสี่ยงมากกว่าคนปกติ</c:when>
                                        <c:when test="${100*User.weight/User.height/2>25&&100*User.weight/User.height/2<29.9}">คุณอ้วนในระดับหนึ่ง ถึงแม้จะไม่ถึงเกณฑ์ที่ถือว่าอ้วนมาก ๆ แต่ก็ยังมีความเสี่ยงต่อการเกิดโรคที่มากับความอ้วนได้เช่นกัน ทั้งโรคเบาหวาน และความดันโลหิตสูงบ2</c:when>
                                        <c:when test="${100*User.weight/User.height/2>30}">ค่อนข้างอันตราย เพราะเข้าเกณฑ์อ้วนมาก เสี่ยงต่อการเกิดโรคร้ายแรงที่แฝงมากับความอ้วน หากค่า BMI อยู่ในระดับนี้ จะต้องระวังการรับประทานไขมัน และควรออกกำลังกายอย่างสม่ำเสมอ และหากเลขยิ่งสูงกว่า 40.0 ยิ่งแสดงถึงความอ้วนที่มากขึ้น</c:when>
                                    </c:choose>
                                </details>
                                </div>
                                <div class="col-md-4">
                                </div>
                                </div>
                                </div>
                                <br><br><br>
                                <div class="container-fluid">
                                    <div class="row">
                                        <div class="col-md-4">
                                        </div>
                                        <div class="col-md-4">

                                            <form action="Logout" method="post">
                                                <button type="Logout" class="btn btn-sm active btn-block btn-danger disabled" style="font-size: 1.2rem;">
                                                    Logout
                                                </button>

                                            </form>
                                        </div>
                                        <div class="col-md-4">
                                        </div>
                                    </div>
                                </div>
                                </body>
                                </html>
