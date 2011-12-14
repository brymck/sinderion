EFFECT_REGEX = /effect-(\d+)/
FULL_MATCH = 0
ADD_TEXT = "+"
REMOVE_TEXT = "-"
$filters = null

getEffectClass = (node) ->
  node.className.match(EFFECT_REGEX)[FULL_MATCH]

getFilters = (effectClass) ->
  $(".#{effectClass}.filter")

getNames = (effectClass) ->
  $(".#{effectClass}.name")

checkFilters = ->
  filterLength = $("tr.custom").length
  $(".filterable").each (i, tr) ->
    $tr = $(tr)
    hasMatch = false
    $tr.toggle $tr.find(".matched").length >= filterLength

addFilter = (effectClass, $node) ->
  $filterClone = $node.clone().click(filterEffect)
  $nameClone   = getNames(effectClass).eq(0).clone()
  $filterTd    = $("<td>").append($filterClone)
  $nameTd      = $("<td>").append($nameClone)
  $tr = $("<tr>").addClass("custom").addClass(effectClass)

  $tr.append($filterTd).append($nameTd)

  $filters.append $tr
  checkFilters()

removeFilter = (effectClass) ->
  $(".custom.#{effectClass}").remove()
  checkFilters()

toggleState = (node) ->
  $node = $(node)
  effectClass = getEffectClass(node)
  if $node.text() is ADD_TEXT
    getFilters(effectClass).text(REMOVE_TEXT).parent().addClass "matched"
    addFilter effectClass, $node
  else
    getFilters(effectClass).text(ADD_TEXT).parent().removeClass "matched"
    removeFilter effectClass
    

filterEffect = (e) ->
  e.preventDefault()
  toggleState e.target

highlightMatches = (e) ->
  effectClass = getEffectClass(e.target)
  getFilters(effectClass).parent().addClass "highlight"

unhighlight = ->
  $(".highlight").removeClass "highlight"

$ ->
  $filters = $("#filters tbody")
  $(".filter").click filterEffect
  $(".filter, .name").hover highlightMatches, unhighlight
