//overlay menu related

//selectors
var icon_menu = document.querySelector('#icon_menu');
var overlay_menu = document.querySelector('#overlay_menu');
var close_btn = document.querySelector('#close_btn');


icon_menu.addEventListener('click',function(){
    overlay_menu.style.display = 'flex';
});

close_btn.addEventListener('click',function(){
    overlay_menu.style.display = 'none';
});

//icreament decreament
//selectors
var increase = document.querySelectorAll('.increase');
var decrease = document.querySelectorAll('.decrease');

increase.forEach(element => {
    element.addEventListener('click', function(e){
        var prv_element = e.target.previousElementSibling;
        var qty = prv_element.textContent;
        qty = parseInt(qty);
        qty++;
        prv_element.innerHTML = qty;

        //price updating
        var parent = prv_element.closest('.food_item_footer');
        var price_element = parent.querySelector('.price');

        var ammount = price_element.getAttribute('data-unit-price');

        ammount=parseInt(ammount);
        price_element.innerHTML = ammount*qty;
    });
});
decrease.forEach(element => {
    element.addEventListener('click', function(e){
        var nxt_element = e.target.nextElementSibling;
        var qty = nxt_element.textContent;
        qty = parseInt(qty);

        if(qty ==0) return false;

        qty--;
        nxt_element.innerHTML = qty;

        //price updating
        var parent = nxt_element.closest('.food_item_footer');
        var price_element = parent.querySelector('.price');

        var ammount = price_element.getAttribute('data-unit-price');

        ammount=parseInt(ammount);
        price_element.innerHTML = ammount*qty;
    });
});

//total cart 
var cart_btn = document.querySelectorAll('.cart_btn');
var cart_total = document.querySelector('#cart_total');
cart_btn.forEach( element => {
    element.addEventListener('click',function(e){
        var parent = e.target.closest('.single_food_item');

        var id = parent.getAttribute('data-food-id');
        var title = parent.querySelector('h2').textContent;
        var unit_price = parent.querySelector('.price').getAttribute('data-unit-price');
        var qty = parent.querySelector('.qty_ammount').textContent;
        var total_price = parent.querySelector('.price').textContent;

        var total_cart_data = {
            id: id,
            title: title,
            unit_price: unit_price,
            qty:qty,
            total_price:total_price,
        };
        update_cart(total_cart_data);
    });
});

function update_cart(total_cart_data){
    var fetched_data = JSON.parse(localStorage.getItem('cafe_cart'));

    if(fetched_data == null){
        localStorage.setItem('cafe_cart', JSON.stringify([total_cart_data]));
    } else{
        fetched_data.push(total_cart_data);
        localStorage.setItem('cafe_cart', JSON.stringify(fetched_data));
    }

    get_total();
};

function get_total(){

    var fetched_data = JSON.parse(localStorage.getItem('cafe_cart'));
    var total = 0;
    if(fetched_data){
        fetched_data.forEach( i => {
            total +=parseInt (i.total_price)
        });
        cart_total.innerHTML = total;
    }else{
        cart_total.innerHTML = 0;
    }
};

//checkout Details
var checkout_btn = document.querySelector('#header_cart_btn');
var cart_details_element = document.querySelector('#cart_details');
var cart_details_tbody = document.querySelector('#cart_details_tbody');
var checkout_btn = document.querySelector('#checkout_btn');
var close_modal = document.querySelector('#close_modal');
var clear_cart = document.querySelector('#clear_cart');
var total_cart_price = document.querySelector('#total_cart_price');


checkout_btn.addEventListener('click', function(){
    var fetched_data = JSON.parse(localStorage.getItem('cafe_cart'));
    var cart_details = '';
    var total = 0;
    if(fetched_data){
        fetched_data.forEach( i=> {
            total +=parseInt (i.total_price)
            cart_details += `
            <tr>
            <td>${i.id}</td>
            <td>${i.title}</td>
            <td>${i.unit_price}</td>
            <td>${i.qty}</td>
            <td>${i.total_price}</td>
            </tr>
            `;
        });
        cart_details_tbody.innerHTML = cart_details;
        total_cart_price.innerHTML = total;
        cart_details_element.style.display = 'block';
    }

});

close_modal.addEventListener('click', function(){
    cart_details_element.style.display = "none";
});


clear_cart.addEventListener('click', function(){
    clearCart();
    get_total();
    cart_details_element.style.display = "none";
});

function clearCart(){
    localStorage.clear('cart');
}

            

