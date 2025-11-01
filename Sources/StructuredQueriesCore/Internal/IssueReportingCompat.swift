#if canImport(IssueReporting)
  import IssueReporting
#else
  @inlinable
  func reportIssue(
    _ message: @autoclosure () -> String,
    fileID: StaticString = #fileID,
    filePath: StaticString = #file,
    function: StaticString = #function,
    line: UInt = #line,
    column: UInt = #column
  ) {}

  @usableFromInline
  var isTesting: Bool { false }
#endif
