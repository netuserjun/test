<html>
<head>
    <title>로그인 화면</title>

    <!-- css 파일 분리 -->
    <link href='../../css/join_style.css' rel='stylesheet' style='text/css'/>

    <script type="text/javascript">

        function checkValue()
        {
            inputForm = eval("document.loginInfo");
            if(!inputForm.id.value)
            {
                alert("아이디를 입력하세요");
                inputForm.id.focus();
                return false;
            }
            if(!inputForm.password.value)
            {
                alert("비밀번호를 입력하세요");
                inputForm.password.focus();
                return false;
            }
        }

        // 회원가입 버튼 클릭시 회원가입 화면으로 이동
        function goJoinForm() {
            location.href="JoinForm.jsp";
        }
    </script>

</head>
<body>
    <div id="wrap">
        <form name="loginInfo" method="post" action="../pro/LoginPro.jsp"
                onsubmit="return checkValue()">

            <table>
                <tr>
                    <td bgcolor="skyblue">아이디</td>
                    <td><input type="text" name="id" maxlength="50"></td>
                </tr>
                <tr>
                    <td bgcolor="skyblue">비밀번호</td>
                    <td><input type="password" name="password" maxlength="50"></td>
                </tr>
            </table>
            <br>
            <input type="submit" value="로그인"/>
            <input type="button" value="회원가입" onclick="goJoinForm()" />
        </form>

        <script>
        String msg=request.getParameter("msg");

        if(msg!=null && msg.equals("0"))
        {
            out.println("<br>");
            out.println("<font color='red' size='5'>비밀번호를 확인해 주세요.</font>");
        }
        else if(msg!=null && msg.equals("-1"))
        {
            out.println("<br>");
            out.println("<font color='red' size='5'>아이디를 확인해 주세요.</font>");
        }
      </script>

    </div>
</body>
</html>

