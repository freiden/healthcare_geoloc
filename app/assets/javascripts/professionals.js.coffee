# Place all the behaviors and hooks related to the matching controller here.
# All this logic will automatically be available in application.js.
# You can use CoffeeScript in this file: http://coffeescript.org/

Professional = {}

getProfessionalInfo = (professional) ->
  name: professional.find('.name').text()
  speciality: professional.find('.specialty').text()
  address: professional.find('.address').text()

initMap = ->
  Professional.map = L.map 'professionals-map',
    maxZoom: 18
    attribution: 'Map data &copy; <a href="http://openstreetmap.org">OpenStreetMap</a> contributors, <a hr    ef="http://creativecommons.org/licenses/by-sa/2.0/">CC-BY-SA</a>'

  tileLayer = L.tileLayer '//{s}.tile.openstreetmap.org/{z}/{x}/{y}.png'
  tileLayer.addTo Professional.map
  Professional.map.setView([46.227638, 2.213749], 5)

markerContent = (professionalInfo) ->
  content = "<div class='header'><h3>#{professionalInfo.name}</h3></div>"
  content += "<div class='speciality'>Specialty: #{professionalInfo.speciality}</div>"
  content += "<div class='address'>#{professionalInfo.address}</div>"
  return content

professionalsList = ->
  $('#professionals tbody tr').each ->
    $professional = $(@)
    $locator = $professional.find("td .locator")
    $coordinates = $locator.data()
    marker = L.marker([$coordinates.lat, $coordinates.long])
    marker.addTo(Professional.map)
    marker.bindPopup(markerContent(getProfessionalInfo($professional)))
    $locator.on 'click', (e) ->
      e.preventDefault()
      Professional.map.setView([$coordinates.lat, $coordinates.long], 10)
      marker.openPopup()


$ ->
  initMap()
  professionalsList()