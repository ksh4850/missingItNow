<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="ko">

<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Document</title>
    <link rel="stylesheet" href="${ pageContext.servletContext.contextPath }/resources/css/reset.css">
    <link rel="stylesheet" href="${ pageContext.servletContext.contextPath }/resources/css/product/payment.css">
</head>

<body>
<jsp:include page="../common/header.jsp"/>
    <section>
        <div class="frame">
            <div class="left-screen">
                <div class="payment-name">배송정보</div>
                <div class="shipping-choice">
                    <br>
                    <input type="radio" id="r1" name="rr" checked="checked" />
                    <label for="r1"><span></span>기본배송지</label>
                    <input type="radio" id="r2" name="rr" />
                    <label for="r2"><span></span>직접입력</label>
                </div>
                <div class="address">
                    송준원
                </div>
                <div class="phonumber">
                    (123456) 서울특별시 강남구 천중로 27길 48 (길동,에스엠이로빌) 305호<br>

                    010-9898-9898
                </div>
                <div class="select-shipping">
                    <select>
                        <option value="배송요청사항을 선택해 주세요">배송요청사항을 선택해 주세요</option>
                        <option value="도착 전에 전화주세요">도착 전에 전화주세요</option>
                        <option value="오후에 와주세요">오후에 와주세요</option>
                        <option value="경비실에 맡겨주세요">경비실에 맡겨주세요</option>
                        <option value="집 앞에 놔두어주세요">집 앞에 놔두어주세요</option>
                    </select>
                </div>
                <div class="payment-name">주문상품 <span class="payment-name-2">상품수량 및 옵션변경은 상품상세 또는 장바구니에서 가능합니다.</span>
                </div>

                <table class="product-table">
                    <tr>
                        <td class="product-table-row-1"><img src="${ pageContext.servletContext.contextPath }/resources/images/product/1.jpg" alt="" width="130px"></td>
                        <td class="product-table-row-2">미나 LED 미니 버섯램프_LH60 11colors</td>
                        <td class="product-table-row-3">1개</td>
                        <td class="product-table-row-4">8,000원<br><span class="product-price"><del>10,000원</del></span>
                        </td>
                        <td class="product-table-row-5">무료배송</td>
                    </tr>
                </table>
            </div>




            <!-- 오른 쪽 영수증 부분 -->
            <div class="right-screen">
                <div class="receipt">
                    <div class="receipt-top">결제 예정금액</div>
                    <div class="receipt-middle">
                        <div class="middle-left">
                            상품금액<br>
                            배송비<br>
                            할인금액<br>
                        </div>
                        <div class="middle-right">
                            10,000원<br>
                            0원<br>
                            -2,000원<br>
                        </div>
                        <div class="middle2-left">
                            합계
                        </div>
                        <div class="middle2-right">
                            8,000원
                        </div>
                    </div>
                    <div class="receipt-buttom">
                        <div class="buttom-name">
                            필수 약관을 확인하였으며 결제에 동의합니다.
                        </div>
                        <a href="#">
                            <div class="buttom-box">
                                결제하기
                            </div>
                        </a>
                    </div>

                </div>
            </div>
        </div>
    </section>
    <jsp:include page="../common/footer.jsp"/>
</body>

</html>