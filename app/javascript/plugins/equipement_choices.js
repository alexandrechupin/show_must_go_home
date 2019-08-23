const initEquipmentchoices = () => {
  $(".eqmt-card").click(function(){
    $(this).toggleClass("active");
  });
}

export { initEquipmentchoices };
