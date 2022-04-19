// Weak
// Weak.swift
//
// MIT License
//
// Copyright (c) 2021 Varun Santhanam
// Permission is hereby granted, free of charge, to any person obtaining a copy
// of this software and associated documentation files (the  Software), to deal
//
// in the Software without restriction, including without limitation the rights
// to use, copy, modify, merge, publish, distribute, sublicense, and/or sell
// copies of the Software, and to permit persons to whom the Software is
// furnished to do so, subject to the following conditions:
//
// The above copyright notice and this permission notice shall be included in all
// copies or substantial portions of the Software.
//
// THE SOFTWARE IS PROVIDED  AS IS, WITHOUT WARRANTY OF ANY KIND, EXPRESS OR
// IMPLIED, INCLUDING BUT NOT LIMITED TO THE WARRANTIES OF MERCHANTABILITY,
// FITNESS FOR A PARTICULAR PURPOSE AND NONINFRINGEMENT. IN NO EVENT SHALL THE
// AUTHORS OR COPYRIGHT HOLDERS BE LIABLE FOR ANY CLAIM, DAMAGES OR OTHER
// LIABILITY, WHETHER IN AN ACTION OF CONTRACT, TORT OR OTHERWISE, ARISING FROM,
// OUT OF OR IN CONNECTION WITH THE SOFTWARE OR THE USE OR OTHER DEALINGS IN THE
// SOFTWARE.

/// ## Weak
///
/// An existential weak reference.
/// Use this wrapper class to pass around weakly-referenced instances of an object.
///
/// ```
/// var obj: MyObj? = .init( ... )
/// let weakReference = Weak<MyObj>(obj!)
///
/// assert(weakReference != nil)
///
/// obj = nil
///
/// assert(weakReference == nil)
/// ```
public final class Weak<T: AnyObject> {

    /// Create a weak reference to the provided object instance
    /// - Parameter obj: An instance to weakify
    public init(_ obj: T) {
        self.obj = obj
    }

    /// A weak reference to the object
    public weak var obj: T?
}
