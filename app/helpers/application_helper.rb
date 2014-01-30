module ApplicationHelper

  def encabezado_1
    '
      <div id="content-top" class="container-fluid">
        <div class="row-fluid">
          <div id="parallaxContainer" class="span12">'.html_safe
    # 3 divs
  end

  def encabezado_2(image1)
    image_tag "#{image1}"
  end

  def encabezado_3(title1)
    "#{'</div>
      <div id="content-middle">
      <h1 class="page-title">' + title1 +'</h1>'}".html_safe

    # 1 div
  end

  def encabezado_4(bootstrap_span)
    "#{'<div class="container-fluid region simple"><div class="' + bootstrap_span + ' main-section-page">'}".html_safe
    # 2 divs
  end

  def encabezado_5(title2)
    if title2 != 'false'
      "#{'<h2 class="title region-title">' + title2 + '</h2>'}".html_safe
    end
  end

  def closing_tags
    "</div></div></div></div></div>".html_safe
  end



  def encabezado(image1, title1, title2, bootstrap_span)
    encabezado_1 + encabezado_2(image1) + encabezado_3(title1) + encabezado_4(bootstrap_span) + encabezado_5(title2)
  end

  # PARAGRAPH
  def paragraph(text)
    "#{sanitize(simple_format(text), :tags => %w(p i br b))}".html_safe
  end

  def paragraph_truncate(text, length)
    "#{sanitize(simple_format(truncate(text, :length => length)), :tags => %w(p i br b))}".html_safe
  end

end
