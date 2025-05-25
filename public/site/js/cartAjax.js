var tmp;
var tmp2;
var trackQuantityList = {};

window.onload = function () {
    initQuantityList();
};

function initQuantityList() {
    var getProductsEle = document.getElementsByClassName("cart-item-class");
    // debugging purpose 
    tmp2 = getProductsEle;

    for (const [key, value] of Object.entries(getProductsEle)) {
        // console.log(`${key}: ${value}`);
        var prodId = value.id.replace(/^\D+/g, '');
        var prodVal = document.getElementById(prodId.concat("quantity")).value;
        trackQuantityList[prodId] = prodVal;
    }
    console.log(trackQuantityList);
}

function cartAjaxController(itemID, coupon, actionName) {
    var xmlhttp = new XMLHttpRequest();
    xmlhttp.onreadystatechange = function () {
        if (this.readyState == 4 && this.status == 200) {
            modifyCartHTMLAjax(JSON.parse(this.responseText), itemID, coupon);
        }
    }
    var ReqTxt;
    var cartAction;
    var actionMethod;

    switch (actionName) {
        case "add":
        case "remove":
            cartAction = actionName;
            actionMethod = "ajaxModifyQuantity";
            break;
        case "delete":
            cartAction = actionName;
            actionMethod = "ajaxDelete";
            break;
        default:
            return;
    }
    var reqTxt = "?controller=cart&action=".concat(actionMethod).concat("&id=").concat(itemID).concat("&cartAction=")
        .concat(cartAction)
        .concat("&quantity=").concat(trackQuantityList[itemID])
    xmlhttp.open("GET", reqTxt, true);
    xmlhttp.send();

    // window.location.href = reqTxt;
}

function modifyCartHTMLAjax(cartJsonRes, itemID, coupon) {
    // this tmp var is used for debugging purpose
    tmp = cartJsonRes;
    console.log(tmp);
    // ================== locate element
    // locate quantity of current product
    var curQuantEle = document.getElementById("".concat(itemID).concat("quantity"));
    // locate total price of current product
    var curProdOverallPriceEle = document.getElementById("prod-overall-price".concat(itemID));
    // locate overall price in cart
    var overallPriceInCartEle = document.getElementById("total-in-cart");
    // locate sub total price 
    var subTotalEle = document.getElementById("sub-total-price");
    // locate final price
    var finalPriceEle = document.getElementById("total-price");
    // locate product number in cart symbol
    var prodNoCartEle = document.getElementById("cart-quantity");
    if (cartJsonRes.items[itemID] == null || cartJsonRes.items[itemID].quantity <= 0) {
        if (cartJsonRes.items[itemID] == null) {
            console.log("===================");
            console.log("null item");
        } else if (cartJsonRes.items[itemID].quantity <= 0) {
            console.log("===================");
            console.log("invalid quantity");
        }

        var cartItemELe = document.getElementById("cart-item-".concat(itemID));
        // remove element
        cartItemELe.remove();

        // update new value for product quantity array
        trackQuantityList[itemID] = 0;


        
        prodNoCartEle.textContent = cartJsonRes.total_quantity;
        return;
    }

    // update new value for product quantity array
    trackQuantityList[itemID] = cartJsonRes.items[itemID].quantity;

    // display new value
    curQuantEle.value = cartJsonRes.items[itemID].quantity;
    curProdOverallPriceEle.innerText = "$".concat(cartJsonRes.items[itemID].price_sum.toFixed(2));
    console.log(cartJsonRes)
    // overallPriceInCartEle.innerText = "Total: $".concat(cartJsonRes.total_price.toFixed(2));
    // subTotalEle.textContent = "$".concat(cartJsonRes.total_price.toFixed(2));
    // finalPriceEle.textContent = "$".concat((cartJsonRes.total_price * (1 - coupon)).toFixed(2));

    prodNoCartEle.textContent = cartJsonRes.total_quantity;
}
 
function onAddToCartAjaxHome(itemID) {
    var xmlhttp = new XMLHttpRequest();
    xmlhttp.onreadystatechange = function () {
        if (this.readyState == 4 && this.status == 200) {
            var resObj = JSON.parse(this.responseText);
            tmp = resObj;
            // locate message holder
            var msgHolder = document.getElementById("add-product-to-cart-ajax");
            // locate product number in cart symbol
            var prodNoCartEle = document.getElementById("cart-quantity");

            prodNoCartEle.textContent = resObj.cartQuantity;
            msgHolder.innerHTML = `<div class="alert alert-warning" style="margin-bottom: 0;" id="success-add-to-cart">
            <button onclick="document.getElementById('success-add-to-cart').style.display='none'" type="button" class="close" data-dismiss="alert" aria-hidden="true">&times;</button>
            `.concat(resObj.message).concat(`
        </div>`);
        }
    }
    console.log("ok2")
    var reqTxt = "?controller=cart&action=addAjax".concat("&id=").concat(itemID)
    xmlhttp.open("GET", reqTxt, true);
    xmlhttp.send();
}



function onAddToCartAjax(itemID, quantity) {
    if(quantity < 1){
        alert("sản phẩm phải có số lượng lớn hơn 0")
        return;
    }
    var xmlhttp = new XMLHttpRequest();
    xmlhttp.onreadystatechange = function () {
        if (this.readyState == 4 && this.status == 200) {
            var resObj = JSON.parse(this.responseText);
            tmp = resObj;
            // locate message holder
            var msgHolder = document.getElementById("add-product-to-cart-ajax");
            // locate product number in cart symbol
            var prodNoCartEle = document.getElementById("cart-quantity");

            prodNoCartEle.textContent = resObj.cartQuantity;
            msgHolder.innerHTML = `<div class="alert alert-warning" style="margin-bottom: 0;" id="success-add-to-cart">
            <button onclick="document.getElementById('success-add-to-cart').style.display='none'" type="button" class="close" data-dismiss="alert" aria-hidden="true">&times;</button>
            `.concat(resObj.message).concat(`
        </div>`);
        }
    }
    console.log("ok2")
    var reqTxt = "?controller=cart&action=addAjax".concat("&id=").concat(itemID).concat("&quantity=").concat(quantity);
    console.log(reqTxt)
    xmlhttp.open("GET", reqTxt, true);
    xmlhttp.send();
}

function applyCouponAjax(couponId, totalPriceOrigin){
 var xmlhttp = new XMLHttpRequest();
    xmlhttp.onreadystatechange = function () {
        if (this.readyState == 4 && this.status == 200) {
            var resObj = JSON.parse(this.responseText);
            tmp = resObj;
            console.log(tmp)

            // sửa giá giao diện
            totalPrice = document.getElementById("total-price");
            totalPrice.textContent =   Number(totalPriceOrigin) * (1-tmp.coupon_value)

            message = document.getElementById("message-coupon");

            // kiểm tra input
            input = document.getElementById('coupon_id');
            // sửa thông báo
            if(input.value){
                if(tmp.coupon_value > 0){
                message.classList.remove("invalid-error");
                message.style.color = "#28a745"; // xanh lá
                }else{
                    message.classList.add("invalid-error");
                    message.style.color = "";
                }
                 message.textContent = tmp.message;
            }else{
                 message.textContent = "Vui lòng nhập mã giảm giá";
            }
            


            // sửa hiển thị coupon
            const display = document.getElementById("coupon-display");
            if(tmp.coupon_value > 0){
                display.innerHTML = `<span class="discount">-(${tmp.coupon_value * 100}%) ${couponId}</span>`;
            }else{
                display.innerHTML = `<span>Chưa có mã nào được áp dụng`;
            }
        }
    }
    console.log("ok2")
    var reqTxt = "?controller=cart&action=applyCouponAjax".concat("&id=").concat(couponId);
    console.log(reqTxt)
    xmlhttp.open("GET", reqTxt, true);
    xmlhttp.send();
}

function markCheckedItem(idItem, isChecked){
    // tick vào checkbox

    // gọi đến api để cập nhật lại trạng thái giỏ hàng được chọn
    api = "?controller=cart&action=handleApiChecked&id=".concat(idItem).concat("&isChecked=").concat(isChecked);
    console.log(api)
    fetch(api)
        .then(response => response.json())
        .then(data => {
            console.log(data);
        })
        .catch(e => {
            console.log(e);
        });
    // khi bấm thanh toán thì sẽ chỉ lấy những sản phẩm trong giỏ có checked
    // Khi hoàn thành xong đơn thanh toán (chuyển khoản hoặc cash) -> cập nhật xóa sản phẩm checked
    // update lại tổng tiền

}