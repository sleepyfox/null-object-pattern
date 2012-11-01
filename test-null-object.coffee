should = require('chai').should()

class Tree
  constructor: (@leftNode = {}, @rightNode = {}) ->
  size: ->
    0

describe 'null object pattern', ->
  it 'a binary tree should have a left node', ->
    tree = new Tree
    should.exist(tree.leftNode)

  it 'a binary tree should have a right node', ->
    tree = new Tree
    should.exist(tree.rightNode)

  it 'a tree that is empty should have size zero', ->
    tree = new Tree
    tree.leftNode.should.eql {}
    tree.rightNode.should.eql {}
    tree.size().should.equal 0

  it 'a tree with a left node and no right node should have size one', ->
    tree = new Tree 1
    tree.size().should.equal 1
    