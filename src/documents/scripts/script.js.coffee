scroll_if_anchor = (href) ->
  href = (if typeof (href) is "string" then href else $(this).attr("href"))
  
  # If href missing, ignore
  return  unless href
  
  # You could easily calculate this dynamically if you prefer
  fromTop = 60
  
  # If our Href points to a valid, non-empty anchor, and is on the same page (e.g. #foo)
  # Legacy jQuery and IE7 may have issues: http://stackoverflow.com/q/1593174
  if href.charAt(0) is "#"
    $target = $(href)
    
    # Older browsers without pushState might flicker here, as they momentarily
    # jump to the wrong position (IE < 10)
    if $target.length
      $("html, body").animate scrollTop: $target.offset().top - fromTop
      if history and "pushState" of history
        history.pushState {}, document.title, window.location.pathname + href
        false
$ ->
  $("h2, h3, h4, h5, h6").each (i, el) ->
    $el = undefined
    icon = undefined
    id = undefined
    $el = $(el)
    id = $el.attr("id")
    icon = "<i class=\"fa fa-link\"></i>"
    $el.prepend $("<a />").addClass("header-link").attr("href", "#" + id).html(icon)  if id



# When our page loads, check to see if it contains and anchor
scroll_if_anchor window.location.hash

# Intercept all anchor clicks
$("body").on "click", "a", scroll_if_anchor
$("#code").addClass "active"