
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>File Upload</title>
    </head>
    <body>
        <form action="ChangeProfilePic.jsp" enctype="multipart/form-data" method="post">
            <input type="file" name="filename"/>
            <input type="submit"/>
        </form>
    </body>
</html>
