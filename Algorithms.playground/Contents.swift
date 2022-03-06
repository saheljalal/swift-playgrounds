import Foundation

protocol Bar {
    func method() -> String
}

extension Bar {
    func method() -> String {
        return "Bar.method()"
    }
}

protocol Foo {
    func method() -> String
}

extension Foo {
    func method() -> String {
        return _method()
    }
    
    fileprivate func _method() -> String {
        return "Foo.method()"
    }
}

extension Foo where Self : Bar {
    func method() -> String {
//        return "Foo.Bar.method()"
        return _method()
    }
}

struct SFoo : Foo {}

struct SBar : Bar {}

struct FooBar : Foo, Bar {}

let foo = SFoo()
foo.method()

let bar = SBar()
bar.method()

let foobar = FooBar()
foobar.method()
