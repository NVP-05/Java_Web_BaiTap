<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<!DOCTYPE html>
<html>
<head>
    <meta charset="UTF-8">
    <title>Form Góp Ý</title>
    <style>
        body {
            font-family: Arial, sans-serif;
            padding: 30px;
            background-color: #f8f9fa;
        }
        .form-container {
            background-color: #fff;
            padding: 20px 30px;
            border-radius: 8px;
            max-width: 500px;
            margin: 0 auto;
            box-shadow: 0 0 10px rgba(0,0,0,0.1);
        }
        h2 {
            text-align: center;
            margin-bottom: 20px;
        }
        label {
            display: block;
            margin-top: 15px;
            font-weight: bold;
        }
        input[type="text"], textarea {
            width: 100%;
            padding: 10px;
            margin-top: 5px;
            border-radius: 4px;
            border: 1px solid #ccc;
            box-sizing: border-box;
        }
        textarea {
            height: 120px;
        }
        button {
            margin-top: 20px;
            padding: 10px 20px;
            background-color: #007bff;
            color: white;
            border: none;
            border-radius: 4px;
            cursor: pointer;
            width: 100%;
            font-size: 16px;
        }
        button:hover {
            background-color: #0056b3;
        }
    </style>
</head>
<body>

<div class="form-container">
    <h2>Góp Ý</h2>
    <form action="submitFeedback" method="post">
        <label for="fullName">Họ và tên:</label>
        <input type="text" id="fullName" name="fullName" required>
        <label for="phone">Số điện thoại:</label>
        <input type="text" id="phone" name="phone" required>
        <label for="address">Địa chỉ:</label>
        <input type="text" id="address" name="address">
        <label for="content">Nội dung góp ý:</label>
        <textarea id="content" name="content" required></textarea>
        <button type="submit">Gửi góp ý</button>
    </form>
</div>
</body>
</html>
