EFFECT_REGEX = /effect-(\d+)/
INGREDIENT_REGEX = /ingredient-(\d+)/
INGREDIENT_LINK_REGEX = /ingredients(\/[a-z_]*)$/
FULL_MATCH = 0
FIRST_BACKREF = 1
ADD_TEXT = "+"
REMOVE_TEXT = "-"

# Search type indexes
AT_LEAST_ONE = 0
AT_LEAST_TWO = 1
ALL = 2
CUSTOM = 3

# Objects
$effects = null
$ingredients = null
$searchTypes = null
$potionLink = null

getIngredientClass = (node) ->
  node.className.match(INGREDIENT_REGEX)[FULL_MATCH]

getIngredientClasses = ->
  ingredients = []
  $ingredients.find(".ingredient").each (i, ingredient) ->
    ingredients.push getIngredientClass(ingredient)
  ingredients

getIngredientName = (ingredientClass) ->
  $(".#{ingredientClass}.ingredient-name")

getIngredientCount = ->
  $ingredients.find("tr.custom").length

getIngredientEffects = ->
  effects = []
  doubled = []
  $ingredients.find(".ingredient").each (i, ingredient) ->
    $("##{getIngredientClass(ingredient)} .effect").each (j, effect) ->
      effectClass = getEffectClass(effect)
      if effectClass in effects
        doubled.push effectClass
      else
        effects.push effectClass
  { effects: effects, doubled: doubled }

getEffectClass = (node) ->
  node.className.match(EFFECT_REGEX)[FULL_MATCH]

getEffects = (effectClass) ->
  $(".#{effectClass}.effect")

getEffectNames = (effectClass) ->
  $(".#{effectClass}.effect-name")

getEffectCount = ->
  $effects.find("tr.custom").length

getMinMatches = ->
  ec = getEffectCount()
  switch $searchTypes.filter(":checked").data("index")
    when AT_LEAST_ONE
      Math.min ec, 1
    when AT_LEAST_TWO
      Math.min ec, 2
    when ALL
      ec
    when CUSTOM
      switch getIngredientCount()
        when 0
          if ec > 1 then ec - 1 else ec
        when 3
          7
        else
          1

highlightDoubles = ->
  $(".doubled").removeClass "doubled"
  for effect in getIngredientEffects().doubled
    $(".effect.#{effect}").parent().addClass "doubled"

showPotionLink = (ingredientsChosen) ->
  if ingredientsChosen is 3
    link = "/potions"
    $ingredients.find(".ingredient-name").each (i, a) ->
      link += a.href.match(INGREDIENT_LINK_REGEX)[FIRST_BACKREF]
    $potionLink.show().find("a").attr("href", link)
  else
    $potionLink.hide()

checkEffects = ->
  highlightDoubles()
  filterMin = getMinMatches()
  ic = getIngredientClasses()
  $(".filterable").each (i, tr) ->
    $tr = $(tr)

    # Ignore preselected ingredients
    if tr.id in ic
      $tr.show()
    else
      hasMatch = false
      matches = $tr.find(".matched:not(.doubled)").length
      $tr.toggle matches >= filterMin
  showPotionLink(ic.length)

addIngredient = (ingredientClass, $node) ->
  $("##{ingredientClass}").find(".effect:contains(+)").each (i, effect) ->
    $n = $(effect)
    addEffect getEffectClass(effect), $n, true
  $ingredientClone = $node.clone().click(filterIngredient)
  $nameClone       = getIngredientName(ingredientClass).eq(0).clone()
  $ingredientTd    = $("<td>").append($ingredientClone)
  $nameTd          = $("<td>").append($nameClone)
  $tr = $("<tr>").addClass("custom").addClass(ingredientClass)

  $tr.append($ingredientTd).append($nameTd)

  $ingredients.append $tr
  checkEffects()

removeIngredient = (ingredientClass) ->
  prevIEs = getIngredientEffects().effects
  $(".custom.#{ingredientClass}").remove()
  nextIEs = getIngredientEffects().effects
  removed = []
  for ie in prevIEs
    if ie not in nextIEs
      removeEffect ie
  checkEffects()

addEffect = (effectClass, $node, suppressCheck = false) ->
  getEffects(effectClass).text(REMOVE_TEXT).parent().addClass "matched"
  $effectClone = $node.clone().click(filterEffect)
  $nameClone   = getEffectNames(effectClass).eq(0).clone()
  $effectTd    = $("<td>").append($effectClone)
  $nameTd      = $("<td>").append($nameClone)
  $tr = $("<tr>").addClass("custom").addClass(effectClass)

  $tr.append($effectTd).append($nameTd)

  $effects.append $tr
  checkEffects() unless suppressCheck

removeEffect = (effectClass, suppressCheck = false) ->
  $(".custom.#{effectClass}").remove()
  getEffects(effectClass).text(ADD_TEXT).parent().removeClass "matched"
  checkEffects() unless suppressCheck

filterIngredient = (e) ->
  e.preventDefault()
  $node = $(e.target)
  ingredientClass = getIngredientClass(e.target)
  if $node.text() is ADD_TEXT
    # deal with adding
    $(".#{ingredientClass}.ingredient").text(REMOVE_TEXT).addClass "chosen"
    addIngredient ingredientClass, $node
  else
    # deal with removal
    $(".#{ingredientClass}.ingredient").text(ADD_TEXT).removeClass "chosen"
    removeIngredient ingredientClass

filterEffect = (e) ->
  e.preventDefault()
  $node = $(e.target)
  effectClass = getEffectClass(e.target)
  if $node.text() is ADD_TEXT
    addEffect effectClass, $node
  else
    removeEffect effectClass

highlightMatches = (e) ->
  effectClass = getEffectClass(e.target)
  getEffects(effectClass).parent().addClass "highlight"

unhighlight = ->
  $(".highlight").removeClass "highlight"

$ ->
  $effects = $("#effects tbody")
  $ingredients = $("#ingredients tbody")
  $searchTypes = $("input[name=search_type]")
  $potionLink = $("#potion_link")
  $(".ingredient").click filterIngredient
  $(".effect").click filterEffect
  $(".effect, .effect-name").hover highlightMatches, unhighlight
  $searchTypes.keyup(checkEffects).mouseup(checkEffects).change(checkEffects)
