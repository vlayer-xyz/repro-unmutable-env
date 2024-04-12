fn main() {
    let mut counter: u8 = 0;
    foo(|| {counter += 1;});
    println(counter);
}

fn foo<Env>(f: fn[Env]() -> ()) -> () {
    f();
}
