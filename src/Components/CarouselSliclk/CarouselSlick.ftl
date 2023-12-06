<div class="responsive">
  <#if Images.getSiblings()?has_content>
    <#list Images.getSiblings() as cur_Images>
      <#if (cur_Images.Image99008899.getData())?? && cur_Images.Image99008899.getData() != "">
        <div><img alt="${cur_Images.Image99008899.getAttribute("alt")}" data-fileentryid="${cur_Images.Image99008899.getAttribute("fileEntryId")}" src="${cur_Images.Image99008899.getData()}" /></div>
      </#if>
    </#list>
  </#if>  
</div>

<script>
$(document).ready(function () {
  $(".responsive").slick({
    dots: true,
    infinite: true,
    speed: 300,
    slidesToShow: 4,
    slidesToScroll: 4,
    arrows: true,
    autoplay: true,
    responsive: [
      {
        breakpoint: 1024,
        settings: {
          slidesToShow: 3,
          slidesToScroll: 3,
          infinite: true,
          dots: true,
        },
      },
      {
        breakpoint: 600,
        settings: {
          slidesToShow: 2,
          slidesToScroll: 2,
        },
      },
      {
        breakpoint: 480,
        settings: {
          slidesToShow: 1,
          slidesToScroll: 1,
        },
      },
    ],
  });
});
</script>