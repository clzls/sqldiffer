import std/exitprocs
import os
import parseopt

var p = initOptParser()
block:
  p.next()
  if p.kind != cmdArgument: break
  # First arg: path
  echo "Path: ", p.key
  p.next()
  if p.kind != cmdArgument: break
  # 2nd arg: old file
  let oldFile = p.key
  p.next()
  if p.kind != cmdArgument: break
  p.next()
  if p.kind != cmdArgument: break
  # 5th arg: old file
  p.next()
  if p.kind != cmdArgument: break
  let newFile = p.key
  let cmd = quoteShellCommand(["sqldiff", oldFile, newFile])
  echo cmd
  let resl = cmd.execShellCmd()
  setProgramResult resl