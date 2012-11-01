should = require('chai').should()

class Tree
  constructor: (@leftNode = {}, @rightNode = {}) ->
  size: ->
    nodeSize = 1
    if 'size' of @leftNode
      nodeSize = nodeSize + @leftNode.size()
    if 'size' of @rightNode
      nodeSize = nodeSize + @rightNode.size()
    return nodeSize


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
    tree.size().should.equal 1

  it 'a tree with a leftNode should have size two', ->
    subtree =  new Tree
    tree = new Tree(subtree, {})
    tree.rightNode.should.eql {}
    tree.leftNode.should.eql subtree
    tree.size().should.equal 2

  it 'a tree with a rightNode should have size two', ->
    subtree =  new Tree
    tree = new Tree({}, subtree)
    tree.leftNode.should.eql {}
    tree.rightNode.should.eql subtree
    tree.size().should.equal 2

  it 'a tree with a rightNode should have size two', ->
    subtree =  new Tree
    tree = new Tree(subtree, subtree)
    tree.leftNode.should.eql subtree
    tree.rightNode.should.eql subtree
    tree.size().should.equal 3
