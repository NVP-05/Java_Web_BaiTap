<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<!DOCTYPE html>
<html lang="vi">
<head>
    <meta charset="UTF-8">
    <title>Danh sách ghế phòng chiếu</title>
    <style>
        body {
            font-family: 'Arial', sans-serif;
            background-color: #f4f4f4;
            margin: 0;
            padding: 0;
            display: flex;
            justify-content: center;
            align-items: center;
            height: 100vh;
        }

        h2 {
            font-size: 24px;
            color: #333;
            margin-bottom: 20px;
        }

        .container {
            background-color: #fff;
            border-radius: 8px;
            box-shadow: 0 0 10px rgba(0, 0, 0, 0.1);
            padding: 20px;
            width: 100%;
            max-width: 600px;
            text-align: center;
        }

        .row {
            display: flex;
            justify-content: center;
            margin-bottom: 10px;
        }

        .seat {
            width: 40px;
            height: 40px;
            margin: 5px;
            background-color: #e0e0e0;
            border: none;
            border-radius: 5px;
            cursor: pointer;
            font-size: 14px;
            font-weight: bold;
            color: #333;
            transition: background-color 0.3s, transform 0.2s;
        }

        .seat:hover {
            background-color: #c7c7c7;
            transform: scale(1.1);
        }

        .seat.selected {
            background-color: #007bff;
            color: white;
        }

        .seat:disabled {
            background-color: #ccc;
            cursor: not-allowed;
        }

        button[type="submit"] {
            background-color: #28a745;
            color: white;
            border: none;
            padding: 10px 20px;
            font-size: 16px;
            border-radius: 5px;
            cursor: pointer;
            transition: background-color 0.3s;
        }

        button[type="submit"]:hover {
            background-color: #218838;
        }

        button[type="submit"]:disabled {
            background-color: #ccc;
            cursor: not-allowed;
        }

        .footer {
            margin-top: 20px;
            font-size: 14px;
            color: #777;
        }

    </style>
</head>
<body>

<h2>Danh sách ghế phòng chiếu số 8</h2>
<form method="post" action="BT09">
    <div class="container">
        <c:forEach var="item" items="${seatList}">
            <div class="row">
                <button type="button" class="seat <c:if test="${item.status}">selected</c:if>" name="idSeat" value="${item.id}" <c:if test="${item.status}">disabled</c:if>>${item.code}</button>
            </div>
        </c:forEach>
    </div>
    <br/>
    <button type="submit" id="checkoutButton" disabled>Thanh toán</button>
</form>

<script>
    const seats = document.querySelectorAll('.seat:not([disabled])');
    const checkoutButton = document.getElementById('checkoutButton');
    let selectedSeats = [];

    seats.forEach(seat => {
        seat.addEventListener('click', () => {
            seat.classList.toggle('selected');
            const seatId = seat.value;
            if (seat.classList.contains('selected')) {
                selectedSeats.push(seatId);
            } else {
                selectedSeats = selectedSeats.filter(id => id !== seatId);
            }
            checkoutButton.disabled = selectedSeats.length === 0;
        });
    });

    checkoutButton.addEventListener('click', () => {
        if (selectedSeats.length === 0) {
            alert('Vui lòng chọn ghế trước khi thanh toán.');
        } else {
            alert('Tổng số tiền: ' + selectedSeats.length * 100000 + ' VND');
        }
    });
</script>

</body>
</html>
