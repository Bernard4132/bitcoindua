# Place all the behaviors and hooks related to the matching controller here.
# All this logic will automatically be available in application.js.
# You can use CoffeeScript in this file: http://coffeescript.org/

$ ->
  document.addEventListener 'trix-attachment-add', (event) ->
    attachment = event.attachment
    if attachment.file
      return sendFile(attachment)
    return

  document.addEventListener 'trix-attachment-remove', (event) ->
    attachment = event.attachment
    deleteFile attachment

  sendFile = (attachment) ->
    file = attachment.file
    form = new FormData
    form.append 'Content-Type', file.type
    form.append 'photo[blog_image]', file
    xhr = new XMLHttpRequest
    xhr.open 'POST', '/photos', true

    xhr.upload.onprogress = (event) ->
      progress = undefined
      progress = event.loaded / event.total * 100
      attachment.setUploadProgress progress

    xhr.onload = ->
      response = JSON.parse(@responseText)
      attachment.setAttributes
        url: response.url
        blog_image_id: response.blog_image_id
        href: response.url

    xhr.send form

  deleteFile = (n) ->
    $.ajax
      type: 'DELETE'
      url: '/photos/' + n.attachment.attributes.values.blog_image_id
      cache: false
      contentType: false
      processData: false

  return