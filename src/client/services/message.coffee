'use strict'

angular.module 'aws-docker-test'
.factory 'message', ->
  messages =
    #menu
    "menu-dashboard": 'Dashboard'
    "menu-users": 'users'
    "menu-pets": 'pets'
    #forms
    "forms-cancel": 'Cancel'
    "forms-submit": 'Submit'
    #user
    "user-heading": 'user'
    "user-name-label": 'Name'
    #users
    "users-heading": 'users'
    "users-button-new": 'New user'
    #pet
    "pet-heading": 'pet'
    "pet-name-label": 'Name'
    #pets
    "pets-heading": 'pets'
    "pets-button-new": 'New pet'
    
  fillTemplate = (template, data) -> 
    template.replace /\{\{(.+?)\}\}/g, (all, match) ->
      evalInContext = (str, context) ->
        (new Function("with(this) {return #{str}}"))
        .call context
      evalInContext match, data
  m = (key, obj) ->
    if messages[key]
      return if obj then fillTemplate(messages[key], obj) else messages[key]
    if /-placeholder$/.test key
      key = key.replace 'placeholder', 'label'
      if messages[key]
        return if obj then fillTemplate(messages[key], obj) else messages[key]
    console.log 'missing message:', key
  m: m
.run ($rootScope, message) ->
  root = Object.getPrototypeOf $rootScope
  root.m = message.m