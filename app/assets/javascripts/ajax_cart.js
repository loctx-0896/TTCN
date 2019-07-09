$(document).ready(function() {
  $('.shopping').on('click', function () {
    var product_id = $(this).attr("data_product_id");

    $.ajax({
      url: '/shopping',
      type: 'POST',
      cache: false,
      data: {
        product_id: product_id
      },
      success: function (data) {
        $('#quantity_products').attr('data-notify', data.size_cart)
        alert(I18n.t("alert.add_to_cart.success"));
      },
      error: function () {
        alert(I18n.t("alert.add_to_cart.fail"));
      }
    });
  });
});
